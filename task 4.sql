-- 1. COUNT - Total number of books
SELECT COUNT(*) AS total_books
FROM books;

-- 2. SUM - Total price of all books
SELECT SUM(price) AS total_price
FROM books;

-- 3. AVG - Average price of books
SELECT AVG(price) AS average_price
FROM books;

-- 4. MIN - Lowest book price
SELECT MIN(price) AS lowest_price
FROM books;

-- 5. MAX - Highest book price
SELECT MAX(price) AS highest_price
FROM books;

-- 6. GROUP BY - Number of books in each category
SELECT category_id, COUNT(*) AS total_books
FROM books
GROUP BY category_id;

-- 7. GROUP BY with AVG
SELECT category_id, AVG(price) AS average_price
FROM books
GROUP BY category_id;

-- 8. GROUP BY with SUM
SELECT category_id, SUM(price) AS total_price
FROM books
GROUP BY category_id;

-- 9. HAVING - Categories with average price above 300
SELECT category_id, AVG(price) AS average_price
FROM books
GROUP BY category_id
HAVING AVG(price) > 300;

-- 10. ROUND with AVG
SELECT category_id, ROUND(AVG(price), 2) AS average_price
FROM books
GROUP BY category_id;

-- 11. COUNT DISTINCT
SELECT COUNT(DISTINCT category_id) AS total_categories
FROM books;