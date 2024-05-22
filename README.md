# SQL-Tutorial
SQL Tutorial 1
Queries On World DB

The world database contains information about countries, cities, and languages, and it's a great resource for practicing SQL queries. Below are some example assignments with queries to help you get started:

1. Basic Select Queries
List all countries and their continents.

SELECT Name, Continent FROM country;

List all cities in Japan.

SELECT Name FROM city WHERE CountryCode = 'JPN';

2. Filtering Data
Find all countries with a population greater than 100 million.

SELECT Name, Population FROM country WHERE Population > 100000000;

Find all cities with a population between 1 million and 5 million.

SELECT Name, Population FROM city WHERE Population BETWEEN 1000000 AND 5000000;

3. Sorting Data

List the top 10 most populous countries.


SELECT Name, Population FROM country ORDER BY Population DESC LIMIT 10;

List all cities in China ordered by population in descending order.

SELECT Name, Population FROM city WHERE CountryCode = 'CHN' ORDER BY Population DESC;

4. Aggregate Functions

Calculate the total population of all countries in Asia.

SELECT SUM(Population) AS TotalPopulation FROM country WHERE Continent = 'Asia';


Find the average population of cities in the United States.

SELECT AVG(Population) AS AveragePopulation FROM city WHERE CountryCode = 'USA';
