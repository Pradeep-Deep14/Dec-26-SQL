CREATE TABLE customers (
         customer_id INT, 
         customer_name VARCHAR(100)
     );
     CREATE TABLE orders (
         order_id INT, 
         customer_id INT 
     );
     INSERT INTO customers VALUES 
         (1, 'Anil Kumar'), 
         (2, 'Rita Sharma'), 
         (3, 'Suresh Patil'), 
         (4, 'Rohan Mehta');
     INSERT INTO orders VALUES 
         (1, 1), 
         (2, 2);

SELECT * FROM CUSTOMERS
SELECT * FROM ORDERS

/*
Find customers who have never placed an order.
*/

SELECT C.CUSTOMER_NAME 
FROM CUSTOMERS C
LEFT JOIN ORDERS O ON C.CUSTOMER_ID = O.CUSTOMER_ID
WHERE O.CUSTOMER_ID IS NULL;




