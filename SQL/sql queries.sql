create database hdfc_bank;
use hdfc_bank;

create table profit_loss(
financial_year varchar(20) primary key,
sales decimal(15,2),
expenses decimal(15,2),
operating_profit decimal(15,2),
other_income decimal(15,2),
depreciation decimal(15,2),
interest decimal(15,2),
profit_before_tax decimal(15,2),
tax decimal(15,2),
net_profit decimal(15,2)
);

create table balance_sheet(
financial_year  varchar(20) primary key,
equity_capital decimal(15,2),
reserves decimal(15,2),
borrowings decimal(15,2),
other_liabilities decimal(15,2),
total_liabilities decimal(15,2),
net_block decimal(15,2),
investments decimal(15,2),
other_assets decimal(15,2),
total_assets decimal(15,2)
);

create table cash_flow(
financial_year varchar(20) primary key,
cash_from_operating_activity decimal(15,2),
cash_from_investing_activity decimal(15,2),
cash_from_financing_activity decimal(15,2),
net_cash_flow decimal(15,2)
);

create table banking_kpis(
financial_year varchar(20) primary key,
total_advances decimal(15,2),
total_deposits decimal(15,2),
casa_deposits decimal(15,2) null,
casa_ratio decimal(15,2) null,
gnpa_ratio decimal(15,2),
net_npa_ratio decimal(15,2),
provision_coverage_ratio decimal(15,2),
nim decimal(15,2),
roa decimal(15,2),
roe decimal(15,2),
car decimal(15,2),
cost_to_income_ratio decimal(15,2)
);

insert into banking_kpis(financial_year, total_advances , total_deposits,casa_deposits,casa_ratio ,gnpa_ratio ,net_npa_ratio ,provision_coverage_ratio,nim,roa,roe,car,cost_to_income_ratio)
values("FY2020-21",1132837,1335060,null,null,1.32,0.4,69.81,4.1,1.97,16.6,18.79,36.3),
("FY2023-24",2484862,2379786,null,38.2,1.24,0.33,74.04,3.53,1.98,16.1,18.8,40.2);

select * from balance_sheet;
select * from profit_loss;
select* from cash_flow;
select* from banking_kpis;


SELECT COUNT(*) AS total_records
FROM profit_loss;
SELECT COUNT(*) AS total_records
FROM balance_sheet;
SELECT COUNT(*) AS total_records
FROM cash_flow;
SELECT COUNT(*) AS total_records
FROM banking_kpis;

SELECT financial_year
FROM cash_flow
ORDER BY financial_year;

select financial_year,casa_deposits,casa_ratio 
from banking_kpis
order by financial_year;

SELECT
    financial_year,
    cash_from_operating_activity,
    cash_from_investing_activity,
    cash_from_financing_activity,
    net_cash_flow
FROM cash_flow
ORDER BY financial_year;

SELECT *
FROM profit_loss
WHERE sales IS NULL
   OR expenses IS NULL
   OR operating_profit IS NULL
   OR other_income IS NULL
   OR depreciation IS NULL
   OR interest IS NULL
   OR profit_before_tax IS NULL
   OR tax IS NULL
   OR net_profit IS NULL;
   
   SELECT *
FROM balance_sheet
WHERE equity_capital IS NULL
   OR reserves IS NULL
   OR borrowings IS NULL
   OR other_liabilities IS NULL
   OR total_liabilities IS NULL
   OR net_block IS NULL
   OR investments IS NULL
   OR other_assets IS NULL
   OR total_assets IS NULL;
   
   SELECT *
FROM cash_flow
WHERE cash_from_operating_activity IS NULL
   OR cash_from_investing_activity IS NULL
   OR cash_from_financing_activity IS NULL
   OR net_cash_flow IS NULL;
   
   SELECT *
FROM banking_kpis
WHERE total_advances IS NULL
   OR total_deposits IS NULL
   OR gnpa_ratio IS NULL
   OR net_npa_ratio IS NULL
   OR provision_coverage_ratio IS NULL
   OR nim IS NULL
   OR roa IS NULL
   OR roe IS NULL
   OR car IS NULL
   OR cost_to_income_ratio IS NULL;
   
   SELECT
    financial_year,
    total_assets,
    total_liabilities,
    total_assets - total_liabilities AS difference
FROM balance_sheet
ORDER BY financial_year ASC;

SELECT
    financial_year,
    cash_from_operating_activity,
    cash_from_investing_activity,
    cash_from_financing_activity,
    net_cash_flow,
    (
        cash_from_operating_activity
        + cash_from_investing_activity
        + cash_from_financing_activity
    ) - net_cash_flow AS difference
FROM cash_flow
ORDER BY financial_year ASC;

SELECT
    (SELECT COUNT(*) FROM profit_loss) AS profit_loss_count,
    (SELECT COUNT(*) FROM balance_sheet) AS balance_sheet_count,
    (SELECT COUNT(*) FROM cash_flow) AS cash_flow_count,
    (SELECT COUNT(*) FROM banking_kpis) AS banking_kpis_count;
  
  #How did HDFC Bank's Net Profit change year-over-year from FY2020-21 to FY2024-25?
  
SELECT
    financial_year,
    net_profit,
    LAG(net_profit) OVER (ORDER BY financial_year) AS previous_year_profit,
    ROUND(
        (net_profit - LAG(net_profit) OVER (ORDER BY financial_year))
        / LAG(net_profit) OVER (ORDER BY financial_year) * 100,
        2
    ) AS yoy_growth_pct
FROM profit_loss
ORDER BY financial_year;

#What was HDFC Bank's overall Net Profit growth across the entire 5-year period?

SELECT
    MIN(financial_year) AS start_year,
    MAX(financial_year) AS end_year,
    MIN(net_profit) AS starting_profit,
    MAX(net_profit) AS ending_profit,
    ROUND(
        (POW(MAX(net_profit) / MIN(net_profit), 1.0 / 4) - 1) * 100,
        2
    ) AS cagr_pct
FROM profit_loss;

# Revenue/Sales YoY Growth 

SELECT
    financial_year,
    sales,
    LAG(sales) OVER (ORDER BY financial_year) AS previous_year_sales,
    ROUND(
        (sales - LAG(sales) OVER (ORDER BY financial_year))
        / LAG(sales) OVER (ORDER BY financial_year) * 100,
        2
    ) AS yoy_growth_pct
FROM profit_loss
ORDER BY financial_year;

# Profit Margin Analysis

SELECT
    financial_year,
    sales,
    net_profit,
    ROUND((net_profit / sales) * 100, 2) AS net_profit_margin_pct
FROM profit_loss
ORDER BY financial_year;

# Operating Profit Margin

SELECT
    financial_year,
    sales,
    operating_profit,
    ROUND((operating_profit / sales) * 100, 2) AS operating_profit_margin_pct
FROM profit_loss
ORDER BY financial_year;

#Expense Growth
 
 SELECT
    financial_year,
    expenses,
    LAG(expenses) OVER (ORDER BY financial_year) AS previous_year_expenses,
    ROUND(
        (expenses - LAG(expenses) OVER (ORDER BY financial_year))
        / LAG(expenses) OVER (ORDER BY financial_year) * 100,
        2
    ) AS expense_growth_pct
FROM profit_loss
ORDER BY financial_year;

#Cost-to-Income from P&L

SELECT
    financial_year,
    sales,
    expenses,
    ROUND((expenses / sales) * 100, 2) AS expense_ratio_pct
FROM profit_loss
ORDER BY financial_year;

#Other Income Analysis

SELECT
    financial_year,
    other_income,
    LAG(other_income) OVER (ORDER BY financial_year) AS previous_year_other_income,
    ROUND(
        (other_income - LAG(other_income) OVER (ORDER BY financial_year))
        / LAG(other_income) OVER (ORDER BY financial_year) * 100,
        2
    ) AS yoy_growth_pct
FROM profit_loss
ORDER BY financial_year;

#Return on Assets (ROA)

SELECT
    financial_year,
    roa
FROM banking_kpis
ORDER BY financial_year;

#ROE Analysis

SELECT
    financial_year,
    roe
FROM banking_kpis
ORDER BY financial_year;


#Banking Business Growth

SELECT
    financial_year,
    total_advances,
    LAG(total_advances) OVER (ORDER BY financial_year) AS previous_year_advances,
    ROUND(
        (total_advances - LAG(total_advances) OVER (ORDER BY financial_year))
        / LAG(total_advances) OVER (ORDER BY financial_year) * 100,
        2
    ) AS yoy_growth_pct
FROM banking_kpis
ORDER BY financial_year;

#Deposit Growth
   
   SELECT
    financial_year,
    total_deposits,
    LAG(total_deposits) OVER (ORDER BY financial_year) AS previous_year_deposits,
    ROUND(
        (total_deposits - LAG(total_deposits) OVER (ORDER BY financial_year))
        / LAG(total_deposits) OVER (ORDER BY financial_year) * 100,
        2
    ) AS yoy_growth_pct
FROM banking_kpis
ORDER BY financial_year;


#Credit–Deposit Ratio

SELECT
    financial_year,
    total_advances,
    total_deposits,
    ROUND(
        total_advances / total_deposits * 100,
        2
    ) AS credit_deposit_ratio_pct
FROM banking_kpis
ORDER BY financial_year;

#CASA analysis

SELECT
    financial_year,
    casa_deposits,
    casa_ratio
FROM banking_kpis
ORDER BY financial_year;


#Asset Quality - GNPA and Net NPA

SELECT
    financial_year,
    gnpa_ratio,
    net_npa_ratio,
    provision_coverage_ratio
FROM banking_kpis
ORDER BY financial_year;


#NIM, ROA and ROE  -banking performance with profitability.

SELECT
    financial_year,
    nim,
    roa,
    roe
FROM banking_kpis
ORDER BY financial_year;


#Capital Adequacy & Cost Efficiency

SELECT
    financial_year,
    car,
    cost_to_income_ratio
FROM banking_kpis
ORDER BY financial_year;


#Cash Flow Analysis

SELECT
    financial_year,
    cash_from_operating_activity,
    cash_from_investing_activity,
    cash_from_financing_activity,
    net_cash_flow
FROM cash_flow
ORDER BY financial_year;



# Ad-hoc Analysis

#1 Did advances grow faster than deposits?
     SELECT
    MIN(financial_year) AS start_year,
    MAX(financial_year) AS end_year,
    ROUND(
        (MAX(total_advances) / MIN(total_advances) - 1) * 100,
        2
    ) AS advances_growth_pct,
    ROUND(
        (MAX(total_deposits) / MIN(total_deposits) - 1) * 100,
        2
    ) AS deposits_growth_pct
FROM banking_kpis;

#2 Which financial year had the highest Net Profit growth?
      SELECT
    financial_year,
    net_profit,
    LAG(net_profit) OVER (ORDER BY financial_year) AS previous_year_profit,
    ROUND(
        (net_profit - LAG(net_profit) OVER (ORDER BY financial_year))
        / LAG(net_profit) OVER (ORDER BY financial_year) * 100,
        2
    ) AS profit_growth_pct
FROM profit_loss
ORDER BY financial_year;
     
#3 Compare Net Profit Growth vs NIM year by year?
       SELECT
    p.financial_year,
    p.net_profit,
    k.nim,
    ROUND(
        (p.net_profit - LAG(p.net_profit) OVER (ORDER BY p.financial_year))
        / LAG(p.net_profit) OVER (ORDER BY p.financial_year) * 100,
        2
    ) AS profit_growth_pct
FROM profit_loss p
JOIN banking_kpis k
    ON p.financial_year = k.financial_year
ORDER BY p.financial_year;

#4 Did Other Income contribute significantly to the FY2023-24 Net Profit growth?
        SELECT
    financial_year,
    sales,
    other_income,
    net_profit,
    ROUND(
        (other_income - LAG(other_income) OVER (ORDER BY financial_year))
        / LAG(other_income) OVER (ORDER BY financial_year) * 100,
        2
    ) AS other_income_growth_pct
FROM profit_loss
ORDER BY financial_year;          

#5 Did asset quality improve or deteriorate after FY2022-23?
      SELECT
    financial_year,
    gnpa_ratio,
    net_npa_ratio,
    provision_coverage_ratio
FROM banking_kpis
ORDER BY financial_year;

#6 Did the rapid growth in advances during FY2023-24 coincide with deterioration in GNPA?
       SELECT
    financial_year,
    total_advances,
    gnpa_ratio,
    ROUND(
        (total_advances - LAG(total_advances) OVER (ORDER BY financial_year))
        / LAG(total_advances) OVER (ORDER BY financial_year) * 100,
        2
    ) AS advances_growth_pct
FROM banking_kpis
ORDER BY financial_year;

#7 Did HDFC Bank become more or less efficient over the five-year period?
        SELECT
    financial_year,
    nim,
    cost_to_income_ratio
FROM banking_kpis
ORDER BY financial_year;

#8 Did HDFC Bank maintain capital strength while its advances and deposits increased?
   SELECT
    financial_year,
    car,
    total_advances,
    total_deposits
FROM banking_kpis
ORDER BY financial_year;

#9 Did lending growth become higher than the deposit base during the period?
     SELECT
    financial_year,
    total_advances,
    total_deposits,
    ROUND(
        total_advances / total_deposits * 100,
        2
    ) AS credit_deposit_ratio
FROM banking_kpis
ORDER BY financial_year;

#10 Is the bank becoming less dependent on low-cost CASA deposits?
         SELECT
    financial_year,
    casa_deposits,
    casa_ratio,
    total_deposits
FROM banking_kpis
ORDER BY financial_year;
