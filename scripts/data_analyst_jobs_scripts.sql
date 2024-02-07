--Looking at data.
SELECT *
FROM data_analyst_jobs;

--Question 1. How many rows are in the data_analyst_jobs table?
SELECT *
FROM data_analyst_jobs;
--Answer: 1793

--Question 2. Write a query to look at just the first 10 rows. What company is associated with the job posting on the 10th row?
SELECT *
FROM data_analyst_jobs
LIMIT 10;
--Answer: ExxonMobil

--Question 3. How many postings are in Tennessee? How many are there in either Tennessee or Kentucky?
SELECT *
FROM data_analyst_jobs
WHERE location = 'TN';
--Answer: 21

SELECT *
FROM data_analyst_jobs
WHERE location IN ('TN','FL');
--Answer: 65