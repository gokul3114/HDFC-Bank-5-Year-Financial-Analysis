
# HDFC Bank – 5-Year Financial & Banking Performance Analysis

### FY2020-21 to FY2024-25

An end-to-end **Data Analyst portfolio project** analyzing HDFC Bank's financial performance, banking business growth, asset quality, efficiency, capital strength, cash flow, and key business trends using **Excel, SQL, Python, and Power BI**.

---

## 📌 Project Overview

This project provides a five-year analytical assessment of HDFC Bank covering **FY2020-21 to FY2024-25**.

The objective is to transform financial and banking data into meaningful business insights that can support management-level decision-making.

The project follows a complete data analytics workflow:

**Excel → SQL → Python → Power BI → Business Insights**

The analysis focuses on:

- Financial performance
- Revenue and profitability
- Banking business growth
- Advances and deposits
- Asset quality and NPAs
- CASA ratio
- Net Interest Margin
- Operating efficiency
- Return on Assets and Equity
- Capital adequacy
- Cash flow
- Ad-hoc business analysis
- Management recommendations

> **Note:** This is an analytical portfolio project and is not intended to provide investment advice or stock recommendations.

---

# 🎯 Business Problem

A large financial institution generates significant amounts of financial and banking data every year. However, raw financial figures alone do not provide a clear understanding of business performance.

The objective of this project is to analyze five years of HDFC Bank data and answer key business questions such as:

- How has profitability changed over the five-year period?
- Which financial year recorded the strongest net profit growth?
- How rapidly have advances and deposits grown?
- Are advances growing faster than deposits?
- How has the credit-to-deposit ratio changed?
- What has happened to the CASA ratio?
- How has asset quality evolved?
- Are GNPA and Net NPA improving or deteriorating?
- How has Net Interest Margin changed?
- Is operating efficiency improving?
- How have ROA and ROE changed?
- Has capital strength remained adequate during business expansion?
- How has operating cash flow changed?
- What are the major strengths and areas requiring management attention?

---

# 🎯 Project Objectives

The project aims to:

1. Analyze HDFC Bank's financial performance over five years.
2. Measure revenue, operating profit, and net profit growth.
3. Analyze advances and deposit growth.
4. Evaluate funding and credit deployment through the Credit-Deposit Ratio.
5. Analyze CASA deposit mix.
6. Evaluate asset quality using GNPA, Net NPA, and Provision Coverage Ratio.
7. Analyze Net Interest Margin and operating efficiency.
8. Evaluate ROA and ROE trends.
9. Assess capital strength using CAR.
10. Analyze operating, investing, and financing cash flows.
11. Perform ad-hoc business analysis.
12. Build an interactive Power BI management dashboard.
13. Convert analytical findings into actionable management recommendations.

---

# 🛠️ Tools & Technologies

| Tool | Purpose |
|---|---|
| **Microsoft Excel** | Data cleaning, preparation and validation |
| **MySQL** | Database creation, structured queries and analysis |
| **Python** | Data analysis, calculations, validation and visualization |
| **Pandas** | Data manipulation and transformation |
| **NumPy** | Numerical calculations |
| **Matplotlib** | Data visualization |
| **Power BI** | Interactive dashboard and management reporting |
| **PowerPoint** | Management presentation |
| **GitHub** | Project documentation and portfolio presentation |

---

# 📊 Data Sources

The project uses financial and banking information covering **FY2020-21 to FY2024-25**.

Primary sources used during the project include:

- HDFC Bank Annual Reports
- HDFC Bank Financial Results
- Screener financial data

The working financial-statement dataset used in the analysis is based on **consolidated financial data**, while several banking KPIs are based on reported banking/standalone metrics.

### Important Data Consideration

HDFC Ltd merged with HDFC Bank effective **July 1, 2023**.

Therefore, FY2023-24 contains a significant change in scale and should be interpreted with the merger context in mind.

---

# 🧹 Data Preparation

The data was prepared before performing analysis.

### Data Preparation Process

**1. Data Collection**

Financial and banking information was collected from annual reports, financial results and financial datasets.

**2. Data Cleaning**

- Standardized financial-year formats
- Standardized column names
- Removed unnecessary fields
- Checked missing values
- Preserved unavailable values as `NULL`
- Converted numerical fields into appropriate numeric formats

**3. Data Validation**

The following checks were performed:

- Duplicate record check
- Chronological year check
- Balance Sheet Assets vs Liabilities reconciliation
- Cash Flow component reconciliation
- Missing-value validation
- Data-type validation

**4. Data Transformation**

Additional analytical metrics were calculated, including:

- YoY Growth
- Net Profit Margin
- Operating Profit Margin
- Credit-Deposit Ratio
- NPA Spread
- CAGR
- Equity-to-Assets Ratio
- Cash Flow Growth

---

# 🗄️ SQL Analysis

The cleaned data was imported into **MySQL** and organized into analytical tables.

### Database

`hdfc_bank`

### Tables

```text
profit_loss
balance_sheet
cash_flow
banking_kpis
```

### SQL Analysis Areas

SQL was used for:

- Financial performance analysis
- Profit growth analysis
- Advances and deposit analysis
- Credit-Deposit Ratio
- Asset quality analysis
- CASA analysis
- NIM analysis
- ROA and ROE analysis
- Capital adequacy analysis
- Cash flow analysis
- Data validation

SQL was also used to validate the integrity of the analytical dataset before moving to Python and Power BI.

---

# 🐍 Python Analysis

Python was used for analytical validation, calculations and visualization.

### Main Libraries

```python
pandas
numpy
matplotlib
mysql-connector-python
```

### Python Workflow

```text
Connect to MySQL
      ↓
Load Analytical Tables
      ↓
Inspect Data
      ↓
Validate Data
      ↓
Merge Required Data
      ↓
Calculate KPIs
      ↓
Calculate YoY Growth
      ↓
Calculate CAGR
      ↓
Perform Ad-Hoc Analysis
      ↓
Create Visualizations
      ↓
Export Final Analytical Dataset
```

### Python Analysis Included

- Data loading from MySQL
- Data inspection
- Missing-value analysis
- Duplicate checks
- Data-type checks
- Year-over-year calculations
- CAGR calculations
- Margin calculations
- Banking KPI analysis
- Cash flow analysis
- Ad-hoc analysis
- Trend visualization
- Cross-validation with SQL and Excel

---

# 📊 Power BI Dashboard

The final Power BI dashboard contains **six management-oriented pages**.

## 1. Executive Overview

Provides a high-level view of:

- Net Profit
- Net Profit Growth
- Advances
- Deposits
- Credit-Deposit Ratio
- Asset Quality
- CASA Ratio

---

## 2. Revenue & Profitability

Analyzes:

- Sales / Income
- Operating Profit
- Net Profit Growth
- Net Profit Margin
- Net Interest Margin

---

## 3. Banking Business Growth

Analyzes:

- Advances
- Deposits
- Advances Growth
- Deposit Growth
- Provision Coverage Ratio
- Capital Adequacy Ratio

---

## 4. Asset Quality & Risk

Analyzes:

- GNPA Ratio
- Net NPA Ratio
- NPA Spread
- Provision Coverage Ratio
- Gross vs Net NPA trends

---

## 5. Efficiency, Returns & Capital

Analyzes:

- ROA
- ROE
- Cost-to-Income Ratio
- Capital Adequacy Ratio
- Return and efficiency trends

---

## 6. Cash Flow & Ad-Hoc Analysis

Analyzes:

- Operating Cash Flow
- Investing Cash Flow
- Financing Cash Flow
- Net Cash Flow
- Profit vs Operating Cash Flow
- Selected ad-hoc business relationships

---

# 📈 Key Business Insights

## 1. Strong Net Profit Growth

Net profit increased from:

**₹31,833.21 Cr → ₹70,792.25 Cr**

between FY2020-21 and FY2024-25.

Overall growth was approximately **122.38%**, with a five-year CAGR of **22.12%**.

The highest annual net profit growth occurred in:

**FY2023-24: +39.27%**

---

## 2. Strong Banking Business Expansion

Total advances increased from:

**₹11.33 lakh Cr → ₹26.20 lakh Cr**

Overall advances growth:

**+131.24%**

Total deposits increased from:

**₹13.35 lakh Cr → ₹27.15 lakh Cr**

Overall deposits growth:

**+103.34%**

Advances therefore grew approximately **27.90 percentage points faster than deposits** over the period.

---

## 3. Credit-Deposit Ratio Increased

The Credit-Deposit Ratio moved from:

**84.85% in FY2020-21**

to:

**96.50% in FY2024-25**

The ratio exceeded 100% in FY2023-24 before moving back below 100% in FY2024-25.

This indicates that credit growth needs to be monitored alongside deposit mobilization.

---

## 4. CASA Ratio Declined

CASA ratio declined from:

**48.20% in FY2021-22 → 34.80% in FY2024-25**

This represents a decline of:

**13.40 percentage points**

Absolute CASA deposits increased in the years where the data was available, but total deposits grew faster.

---

## 5. Asset Quality Improved Initially but Weakened Later

GNPA ratio:

```text
FY2020-21    1.32%
FY2021-22    1.17%
FY2022-23    1.12%
FY2023-24    1.24%
FY2024-25    1.33%
```

Net NPA ratio:

```text
FY2020-21    0.40%
FY2021-22    0.32%
FY2022-23    0.27%
FY2023-24    0.33%
FY2024-25    0.43%
```

Asset quality improved through FY2022-23 but showed deterioration afterward.

---

## 6. Net Interest Margin Declined

NIM declined from:

**4.10% → 3.48%**

over the period.

This indicates pressure on interest margins despite strong growth in absolute profitability.

---

## 7. Returns Moderated

ROA:

**1.97% → 1.91%**

ROE:

**16.60% → 14.56%**

Absolute profit increased significantly, but returns moderated toward FY2024-25.

This highlights the importance of evaluating profitability together with the scale of assets and equity.

---

## 8. Operating Efficiency Requires Attention

Cost-to-Income Ratio increased from:

**36.30% → 40.50%**

A higher ratio indicates increased operating cost pressure relative to income.

---

## 9. Capital Strength Remained Strong

CAR remained within a relatively stable range:

**18.79% – 19.60%**

despite substantial growth in advances and deposits.

Capital strength therefore remained one of the key positive indicators in the analysis.

---

## 10. FY2024-25 Recorded Strong Operating Cash Flow

Operating cash flow increased substantially to:

**₹1,27,241.84 Cr**

in FY2024-25 compared with:

**₹19,069.34 Cr**

in FY2023-24.

At the same time, financing cash flow was significantly negative, resulting in net cash flow of:

**₹21,113.39 Cr**

Cash flow therefore needs to be interpreted together with financing and investing activities rather than in isolation.

---

# 🔎 Ad-Hoc Business Analysis

The project also includes business questions beyond standard KPI reporting.

### Ad-Hoc Analysis 1 — Advances vs Deposits

Advances growth:

**+131.24%**

Deposits growth:

**+103.34%**

Difference:

**27.90 percentage points**

This highlights the importance of monitoring deposit mobilization alongside credit expansion.

---

### Ad-Hoc Analysis 2 — Highest Profit Growth

The strongest annual net profit growth occurred in:

**FY2023-24: +39.27%**

---

### Ad-Hoc Analysis 3 — Credit Growth vs Asset Quality

FY2023-24 recorded:

**+55.25% advances growth**

while GNPA moved from:

**1.12% → 1.24%**

The two changes occurred during the same period, but the analysis does **not** establish that credit growth caused the increase in GNPA.

---

### Ad-Hoc Analysis 4 — NIM vs Profitability

Net profit continued to increase while NIM declined in the later years.

This demonstrates why absolute profit should be analyzed alongside margin and efficiency metrics.

---

### Ad-Hoc Analysis 5 — CASA Trend

CASA ratio declined by:

**13.40 percentage points**

from FY2021-22 to FY2024-25.

This indicates a change in deposit mix that should be monitored from a funding-quality perspective.

---

### Ad-Hoc Analysis 6 — Capital During Business Expansion

CAR remained strong while advances and deposits expanded significantly.

This indicates that business growth was accompanied by maintained capital strength during the analyzed period.

---

# 💡 Management Recommendations

Based on the analysis, the following areas should be monitored:

### 1. Strengthen Deposit Mobilization

Ensure deposit growth remains aligned with credit expansion.

### 2. Improve CASA Mix

Focus on increasing the proportion of lower-cost CASA deposits.

### 3. Protect Net Interest Margin

Monitor lending yields, funding costs and the overall balance between assets and liabilities.

### 4. Maintain Asset Quality

Continue strong credit monitoring and risk controls as advances expand.

### 5. Improve Operating Efficiency

Monitor the Cost-to-Income Ratio and identify opportunities to improve operating leverage.

### 6. Protect Returns

Track ROA and ROE alongside absolute profit growth.

### 7. Preserve Capital Strength

Maintain adequate capital buffers while supporting business expansion.

### 8. Monitor Cash Generation

Evaluate operating cash flow together with investing and financing activities.

### 9. Focus on Quality of Growth

Business growth should be evaluated using multiple dimensions:

**Growth + Funding Quality + Asset Quality + Margin + Efficiency + Returns + Capital + Cash Generation**

---

# 🔄 Project Workflow

```text
                 DATA SOURCES
                      │
                      ▼
              MICROSOFT EXCEL
          Cleaning & Preparation
                      │
                      ▼
                   MYSQL
          Database & SQL Analysis
                      │
                      ▼
                  PYTHON
       Analysis & Analytical Validation
                      │
                      ▼
                FINAL DATASET
                      │
                      ▼
                 POWER BI
          Interactive Dashboard
                      │
                      ▼
            BUSINESS INSIGHTS
                      │
                      ▼
         MANAGEMENT RECOMMENDATIONS
```

---

# 📁 Project Structure

```text
HDFC-Bank-5-Year-Financial-Analysis/
│
├── README.md
│
├── Dashboard/
│   ├── 01_Executive_Overview.png
│   ├── 02_Revenue_Profitability.png
│   ├── 03_Banking_Growth.png
│   ├── 04_Asset_Quality.png
│   ├── 05_Efficiency_Returns_Capital.png
│   └── 06_Cash_Flow_Adhoc.png
│
├── Excel_Cleaned/
│   └── HDFC_Bank_Final_Analysis.xlsx
│
├── PowerBI/
│   └── HDFC_Bank_Dashboard.pbix
│
├── Python/
│   └── HDFC_Bank_Analysis.ipynb
│
├── SQL/
│   ├── 01_Create_Database.sql
│   ├── 02_Create_Tables.sql
│   ├── 03_Insert_Data.sql
│   ├── 04_Validation_Queries.sql
│   └── 05_Analysis_Queries.sql
│
├── PPT/
│   └── HDFC_Bank_Analysis_Presentation.pptx
│
├── Reports/
│   └── HDFC_Bank_5_Year_Financial_Banking_Performance_Management_Report.pdf
│
└── Documentation/
    └── Data_Dictionary.md
```

---

# ⚠️ Limitations & Data Considerations

### Consolidated vs Standalone Data

The working financial-statement dataset is based on consolidated financial information, while several banking KPIs are based on reported banking/standalone metrics.

Therefore, users should consider the reporting basis when comparing metrics.

### HDFC Ltd Merger

HDFC Ltd merged with HDFC Bank effective **July 1, 2023**.

The significant changes in FY2023-24 should therefore be interpreted with the merger context.

### Missing Values

Unavailable CASA values were retained as `NULL` rather than being converted to zero.

### Annual Data

The project uses annual data rather than transaction-level or monthly data.

### Analytical Scope

The project focuses on historical data analysis and does not include:

- Stock price prediction
- Investment recommendations
- Customer-level analysis
- Machine learning prediction
- Transaction-level fraud detection

### Correlation vs Causation

Observed relationships between metrics represent analytical observations and should not automatically be interpreted as causal relationships.

---

# 📚 KPI Coverage

The project analyzes the following major KPIs:

| Category | KPIs |
|---|---|
| Profitability | Sales, Operating Profit, Net Profit |
| Margins | NPM, OPM, NIM |
| Banking Growth | Advances, Deposits |
| Funding | CASA Ratio, Credit-Deposit Ratio |
| Asset Quality | GNPA, Net NPA, NPA Spread |
| Provisioning | Provision Coverage Ratio |
| Returns | ROA, ROE |
| Efficiency | Cost-to-Income Ratio |
| Capital | CAR |
| Cash Flow | OCF, ICF, FCF, Net Cash Flow |
| Growth | YoY Growth, CAGR |

---

# 📊 Dashboard Preview

The repository contains six Power BI dashboard pages covering:

1. Executive Overview
2. Revenue & Profitability
3. Banking Business Growth
4. Asset Quality & Risk
5. Efficiency, Returns & Capital
6. Cash Flow & Ad-Hoc Analysis

Dashboard screenshots are available in the **Dashboard** folder.

---

# 🚀 How to Use This Project

### 1. Explore the Dashboard

Open the Power BI file from:

```text
PowerBI/
```

### 2. Review the Cleaned Dataset

The prepared analytical dataset is available in:

```text
Excel_Cleaned/
```

### 3. Review SQL Analysis

Open the SQL scripts in sequence:

```text
01_Create_Database.sql
02_Create_Tables.sql
03_Insert_Data.sql
04_Validation_Queries.sql
05_Analysis_Queries.sql
```

### 4. Review Python Analysis

Open:

```text
Python/HDFC_Bank_Analysis.ipynb
```

### 5. Review the Management Report

The complete project report is available in:

```text
Reports/
```

### 6. Review the Presentation

The management presentation is available in:

```text
PPT/
```

---

# 🏆 Project Outcome

This project demonstrates an end-to-end **Data Analyst workflow**:

- Data cleaning
- Data validation
- Excel analysis
- SQL database management
- SQL business analysis
- Python data analysis
- KPI calculation
- Ad-hoc analysis
- Data visualization
- Power BI dashboard development
- Business interpretation
- Management recommendations

The project demonstrates how raw financial data can be transformed into a structured analytical solution that supports business understanding and decision-making.

---

# 👤 Author

**Gokul G**

Data Analyst Portfolio Project

Skills demonstrated:

**Excel | SQL | Python | Pandas | NumPy | Matplotlib | Power BI | Data Visualization | Business Analysis**

---

## ⭐ If you find this project useful

Feel free to explore the SQL queries, Python analysis, Power BI dashboard, and management report included in this repository.
