-- Advance Questions : 

-- 1) Retrieve the total number of books sold for each genre:
SELECT 
    b.genre, SUM(o.quantity) AS Total
FROM
    books b
        JOIN
    orders o ON b.Book_ID = o.Book_ID
GROUP BY b.genre;  


-- 2) Find the average price of books in the "Fantasy" genre:
SELECT 
    ROUND(AVG(price), 2) AS avr_of_fantasy
FROM
    books
WHERE
    genre = 'fantasy';


-- 3) List customers who have placed at least 2 orders:
SELECT 
    *
FROM
    orders
WHERE
    quantity > 1;


-- 4) Find the most frequently ordered book:
SELECT 
    b.*, o.quantity
FROM
    books b
        JOIN
    orders o ON b.Book_ID = o.Book_ID
ORDER BY Quantity DESC
LIMIT 1; 



-- 5) Show the top 3 most expensive books of 'Fantasy' Genre :
SELECT 
    *
FROM
    books
WHERE
    genre = 'fantasy'
ORDER BY Price DESC
LIMIT 3;




-- 6) Retrieve the total quantity of books sold by each author:
SELECT 
    COUNT(o.Quantity) AS Total, b.author
FROM
    orders o
        JOIN
    books b ON o.Book_ID = b.Book_ID
GROUP BY b.Author;



-- 7) List the cities where customers who spent over $30 are located:
SELECT 
    c.city, o.Total_Amount
FROM
    customers c
        JOIN
    orders o ON c.Customer_ID = o.Customer_ID
WHERE
    Total_Amount > 30;



-- 8) Find the customer who spent the most on orders:
SELECT 
    c.*, o.total_amount
FROM
    customers c
        JOIN
    orders o ON c.Customer_ID = o.Customer_ID
ORDER BY Total_Amount DESC
LIMIT 1; 



-- 9) Calculate the stock remaining after fulfilling all orders:
SELECT 
    (SELECT 
            SUM(stock)
        FROM
            books) - (SELECT 
            SUM(quantity)
        FROM
            orders) AS Reamining_stocks;

