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

--Question 4. How many postings in Tennessee have a star rating above 4?
SELECT COUNT(star_rating)
FROM data_analyst_jobs
WHERE location = 'TN'
AND star_rating > 4.00;
--Answer: 3

--Question 5. How many postings in the dataset have a review count between 500 and 1000
SELECT COUNT(review_count)
FROM data_analyst_jobs
WHERE review_count BETWEEN 500 AND 1000;
--Answer: 151

--Questions 6. Show the average star rating for companies in each state. The output should show the state as 'state' and the average rating for the state as 'avg_rating'. Which state shows the highest average rating?
SELECT AVG(star_rating) AS avg_rating, location AS state
FROM data_analyst_jobs
GROUP BY location
ORDER BY avg_rating DESC;
--Answer: NE





