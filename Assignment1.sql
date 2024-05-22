use world;
show tables;

select *from city;
select *from country;
select *from countrylanguage;

-- Assignment 1 --

-- Question_1. Basic Select Queries
-- List all countries and their continents.
-- SELECT Name, Continent FROM country;
select name,continent from country;

-- List all cities in Japan.
select *from city where CountryCode='EGY'; 

-- Question_2 Filtering Data
-- Find all countries with a population greater than 100 million.
select Name from Country 
where Population > 10000000;

-- Find all cities with a population between 1 million and 5 million.
select Name,Population from Country
where Population > 1000000 and Population < 5000000;

select Name,Population from Country
where Population between 1000000 and 5000000;

-- Question_3 Sorting Data
-- List the top 10 most populous countries.
select Name from country
order by Population desc
limit 10;

-- List all cities in China ordered by population in descending order.
select Name,Population from city
where CountryCode='CHN'
order by Population desc;

-- Question_4 Aggregate Functions
-- Calculate the total population of all countries in Asia.
select  sum(Population) as totalPopulation , count(Population) as noOfCountries from Country
where Continent='Asia';


-- Find the average population of cities in the United States.
select Population,Continent from Country
where Continent ='North America' or  Continent='South America';

select avg(Population) as averagePopulation, count(Population) as noOfCountries from Country
where Continent ='North America' or  Continent='South America';