-- 1. How many actors are there with the last name ‘Wahlberg’?
SELECT last_name
FROM actor
WHERE last_name = 'Wahlberg';
-- Answer: 2

-- 2. How many payments were made between $3.99 and $5.99?
SELECT amount
FROM payment
WHERE amount BETWEEN 3.99 AND 5.99;
-- Answer: 0

-- 3. What film does the store have the most of? (search in inventory)
SELECT COUNT(film_id), film_id
FROM inventory
GROUP BY film_id
ORDER BY COUNT(film_id) DESC;
-- Answer: 193, 789, 730, etc...

-- 4. How many customers have the last name ‘William’?
SELECT last_name
FROM customer
WHERE last_name = 'William';
-- Answer: 0

-- 5. What store employee (get the id) sold the most rentals?
SELECT staff_id, COUNT(rental_id)
FROM rental
GROUP BY staff_id;
-- Answer: 1

-- 6. How many different district names are there?
SELECT COUNT(DISTINCT district)
FROM address;
-- Answer: 378

-- 7. What film has the most actors in it? (use film_actor table and get film_id)
SELECT film_id, COUNT(actor_id)
FROM film_actor
GROUP BY film_id
ORDER BY COUNT(actor_id)DESC;
-- Answer: 508


-- 8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)
SELECT COUNT(last_name)
FROM customer
WHERE last_name LIKE '%es' AND store_id = 1;
-- Answer: 13


-- 9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
-- with ids between 380 and 430? (use group by and having > 250)
SELECT COUNT(rental_id), amount
FROM payment
WHERE customer_id BETWEEN 380 and 430
GROUP BY amount 
HAVING COUNT(rental_id) > 250;
-- Answer: 3

-- 10. Within the film table, how many rating categories are there? And what rating has the most
-- movies total?
SELECT DISTINCT rating, COUNT(rating)
FROM film
GROUP BY rating;
-- Answer: 5 ratings / PG-13