USE sakila;
#question 1 Select all the actors with the first name ‘Scarlett’
SELECT * from actor
where first_name= 'Scarlett';

#Question2.How many physical copies of movies are available for rent in the store's inventory? How many unique movie titles are available?
SELECT count(inventory_id) from inventory;

SELECT count(distinct film_id)
from inventory;

#question3. What are the shortest and longest movie duration? Name the values max_duration and min_duration.
SELECT max(length)as max_duration, min(length)as min_duration
from film;

#question4. What's the average movie duration expressed in format (hours, minutes)?
SELECT avg (convert(length,time))
from film;

#Question5: How many distinct (different) actors' last names are there?
SELECT count(distinct last_name)
from actor;

#Question6.How many days was the company operating? Assume the last rental date was their closing date. (check DATEDIFF() function)
SELECT DATEDIFF(MAX(rental_date), MIN(rental_date)) as operating_days 
from rental;

#question7.Show rental info with additional columns month and weekday. Get 20 results.

SELECT *, MONTHNAME(last_update) AS 'month', DAYNAME(last_update) AS 'day' 
FROM sakila.rental 
LIMIT 20;

#question8.Add an additional column day_type with values 'weekend' and 'workday' depending on the rental day of the week.
SELECT *,
CASE
WHEN (date_format(rental_date,'%W') = 'Saturday') or (date_format(rental_date,'%W') = 'Sunday')
THEN 'Weekend' 
ELSE 'Weekday' 
END AS day_type 
FROM sakila.rental;

#question9.Get release years. checked OK
SELECT release_year from film;

#question10.Get all films with ARMAGEDDON in the title.
SELECT title from film
WHERE title LIKE '%armageddon%';

#question11.Get all films which title ends with APOLLO.
SELECT title from film
where title like '%apollo';

#question12.Get 10 the longest films.
SELECT title from film
order by length desc
limit 10;

#question13.How many films include Behind the Scenes content? (checked ok
SELECT COUNT(special_features) FROM film
WHERE special_features LIKE '%behind the scenes%';