# 🦠 COVID-19 Data Exploration (SQL Project)

This project explores global COVID-19 trends using SQL. It analyzes infections, death rates, recovery rates, and performs comparisons between countries and WHO regions using a static dataset (`country_wise_latest.csv`).

---

## 📁 Dataset Used

- **File**: `country_wise_latest.csv`
- **Source**: Kaggle or similar COVID-19 open dataset
- **Columns Include**:
  - `Country/Region`
  - `Confirmed`, `Deaths`, `Recovered`, `Active`
  - `New cases`, `New deaths`, `New recovered`
  - `Deaths / 100 Cases`, `Recovered / 100 Cases`
  - `1 week change`, `1 week % increase`
  - `WHO Region`

---

## 🧠 Objectives

- Analyze total and new COVID-19 cases
- Compare death and recovery rates per country
- Examine weekly growth trends
- Group and summarize data by WHO region
- Conceptualize rolling average (for time-series data)

---

## 🏗️ SQL Table Schema

```sql
CREATE TABLE covid_data (
    country_region VARCHAR(100),
    confirmed INT,
    deaths INT,
    recovered INT,
    active INT,
    new_cases INT,
    new_deaths INT,
    new_recovered INT,
    deaths_per_100_cases FLOAT,
    recovered_per_100_cases FLOAT,
    deaths_per_100_recovered FLOAT,
    confirmed_last_week INT,
    one_week_change INT,
    one_week_percent_increase FLOAT,
    who_region VARCHAR(100)
);
