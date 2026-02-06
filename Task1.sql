--Retrieve each customer's first name, country and score
use MyDatabase;
SELECT 
	first_name,
	country,
	score
FROM customers;

-- Retrieve customers with a score not equal to 0
SELECT *
FROM customers
WHERE score!=0;

--Retrieve customers from Germany
SELECT *
FROM customers
WHERE country='Germany';

/*Retrieve all customers and
sort the results by the highest score first. */
SELECT *
FROM customers
ORDER BY score DESC;

/*Retrieve all customers and
sort the results by the lowest score first. */
SELECT *
FROM customers
ORDER BY score ASC;

/*Retrieve all customers and sort the results by 
country and then by the highest score. */
SELECT *
FROM customers
ORDER BY country ASC, score DESC;

--Find total score for each country
SELECT 
	country,
	SUM(score) AS total_score
FROM customers
GROUP BY country;


--Find the total score and total number of customers for each country

SELECT 
	country,
	SUM(score) AS total_score,
	COUNT(*) AS total_customers
FROM customers
GROUP BY country;


/* Find the avarage score for each country considering only customers with a score not equal to 0
and return only those countries with
and average score greater than 430. */
SELECT 
	country,
	AVG(score) AS average_score
FROM customers
WHERE score!=0
GROUP BY country
HAVING AVG(score)>430;

--Return unique list of all countries

SELECT DISTINCT country
FROM customers;