CREATE TABLE covid_data1 (
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
select * from covid_data1;

/*1. Top 10 Countries by Confirmed Cases */
SELECT country_region, confirmed
FROM covid_data1
ORDER BY confirmed DESC
LIMIT 10;

/* 2. Countries with Highest Death Rates*/
SELECT country_region, deaths_per_100_cases
FROM covid_data1
ORDER BY deaths_per_100_cases DESC
LIMIT 10;

/* 3. Recovery Rates per Country */
SELECT country_region, recovered_per_100_cases
FROM covid_data1
ORDER BY recovered_per_100_cases DESC
LIMIT 10;

/* 4. Countries with More Than 1000 New Cases */
SELECT country_region, new_cases
FROM covid_data1
WHERE new_cases > 1000
ORDER BY new_cases DESC;

/*  5. Weekly % Increase > 25% */
SELECT country_region, one_week_percent_increase
FROM covid_data1
WHERE one_week_percent_increase > 25
ORDER BY one_week_percent_increase DESC;

/* 6. WHO Region Summary */ 
SELECT who_region,
       SUM(confirmed) AS total_confirmed,
       SUM(deaths) AS total_deaths,
       SUM(recovered) AS total_recovered
FROM covid_data1
GROUP BY who_region;

/*  7. Top 5 Countries by Active Cases */
SELECT country_region, active
FROM covid_data1
ORDER BY active DESC
LIMIT 5;

