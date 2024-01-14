-- write your queries here
SELECT * FROM owners FULL JOIN vehicles on owners.id = vehicles.owner_id;

SELECT frist_name, last_name,
COUNT(owner_id) FROM owners
JOIN vehicles ON owners.id=vehicles.owner_id
GROUP BY (first_name, last_name)
ORDER BY first_name;


SELECT first_name, last_name, ROUND(AVG(price)) as avg_price,
COUNT(owner_id) 
FROM owners
JOIN vehicles on owners.id=vehicles.owner_id
GROUP BY (first_name, last_name)
HAVING 
   COUNT(owner_id) > 1 AND ROUND(AVG(price)) > 1000
ORDER BY first_name DESC;