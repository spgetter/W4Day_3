SELECT * FROM film_actor;
 
SELECT * FROM actor;

-- Inner Join actor, film_actor
SELECT actor.actor_id, first_name, last_name, COUNT(film_id) AS film_count
FROM film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id
GROUP BY actor.actor_id
ORDER BY film_count DESC;

-- Left Join film_actor, actor
SELECT actor.actor_id, first_name, last_name, film_id
FROM film_actor
LEFT JOIN actor
ON actor.actor_id = film_actor.actor_id;
-- WHERE first_name IS Null and last_name IS Null;

SELECT * FROM country;

SELECT * FROM customer;

SELECT * FROM address;

SELECT * FROM city;

SELECT * FROM city WHERE country_id = 4;

SELECT * FROM address WHERE city_id = 67 or city_id = 360;

SELECT * FROM customer WHERE address_id = 388 or address_id = 534;

-- USE JOIN TO PRODUCE INFO ABOUT CUSTOMER FROM ANGOLA
SELECT customer.first_name, customer.last_name, customer.email, country
FROM customer
FULL JOIN address
ON customer.address_id = address.address_id
FULL JOIN city
ON address.city_id = city.city_id
FULL JOIN country
ON city.country_id = country.country_id
WHERE country = 'Angola';
