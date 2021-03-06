--drop table if existing

DROP TABLE IF EXISTS date_wise_covid19;

--create table for reading from csv

CREATE EXTERNAL TABLE date_wise_covid19(
DateDayWise DATE,
ConfirmedCase INT,
ConfirmedDeaths INT,
RecoveredCases INT
)

ROW FORMAT DELIMITED
FIELDS TERMINATED BY ‘,’
LINES TERMINATED BY ‘\n’
STORED AS TEXTFILE

LOCATION ‘__give file path to storage account in Azure where this table will be stored’;

LOAD DATA INPATH ‘__give file path for date_wise-covid19.csv in Azure storage account’


--Find out on which days having highest Recovered

Select date from date_wise order by recovered Desc;

--Find out on which days having highest Confirmed cases

Select date from date_wise order by confirmed Desc;

--Find out on which days having highest death cases

Select date from date_wise order by deaths Desc;

--Find out on which days having lowest Deaths cases

Select date from date_wise order by death Asc;

--Find out on which days having lowest Recovered cases

Select date from date_wise order by recovered Asc;

--Find out on which days having lowest Confirmed cases

Select date from date_wise order by confirmed Asc;

