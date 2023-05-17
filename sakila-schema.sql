USE sakila ; 
SELECT* from ACTOR;
SELECT* from FILM;
SELECT* from CUSTOMER; #showing actor film and customer
SELECT title as filmtitel #showing the titles of the films
from FILM;
SELECT name as language #changed the column name to "language'and showing movie languages
from language; 
SELECT count(store_id)# I wanted to find out how many stores there are 
from store;
SELECT count(staff_id)# I wanted to find out how many employees there are
from staff;
SELECT first_name # i wanted to find out the first names of employees
from staff;