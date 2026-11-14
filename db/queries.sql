-- 4
SELECT u.id, u.full_name, r.name AS role
FROM users u
JOIN roles r ON r.id = u.role_id
WHERE u.login = ? AND u.password = ?;
-- 5
SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty,
p.description, p.photo,
c.name AS category, m.name AS manufacturer, s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN manufacturers m ON m.id = p.manufacturer_id
JOIN suppliers s ON s.id = p.supplier_id;
-- 6
SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty,
p.description, p.photo,
c.name AS category, m.name AS manufacturer, s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN manufacturers m ON m.id = p.manufacturer_id
JOIN suppliers s ON s.id = p.supplier_id
WHERE p.name LIKE CONCAT('%', ?, '%') AND p.supplier_id = ?
ORDER BY p.stock_qty DESC;

SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty,
p.description, p.photo,
c.name AS category, m.name AS manufacturer, s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN manufacturers m ON m.id = p.manufacturer_id
JOIN suppliers s ON s.id = p.supplier_id
WHERE p.name LIKE CONCAT("%Ботинки%") AND p.supplier_id = 1
ORDER BY p.stock_qty DESC;

SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty,
p.description, p.photo,
c.name AS category, m.name AS manufacturer, s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN manufacturers m ON m.id = p.manufacturer_id
JOIN suppliers s ON s.id = p.supplier_id
WHERE p.supplier_id LIKE p.supplier_id = 1;

SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty,
p.description, p.photo,
c.name AS category, m.name AS manufacturer, s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN manufacturers m ON m.id = p.manufacturer_id
JOIN suppliers s ON s.id = p.supplier_id
WHERE p.name LIKE CONCAT("%Ботинки%");

SELECT p.id, p.article, p.name, p.unit, p.price, p.discount, p.stock_qty,
p.description, p.photo,
c.name AS category, m.name AS manufacturer, s.name AS supplier
FROM products p
JOIN categories c ON c.id = p.category_id
JOIN manufacturers m ON m.id = p.manufacturer_id
JOIN suppliers s ON s.id = p.supplier_id
ORDER BY p.stock_qty DESC;

-- 7
SELECT id, name FROM categories;
SELECT id, name FROM manufacturers;
SELECT id, name FROM suppliers;

INSERT INTO products
(article, name, unit, price, discount, stock_qty, description, photo, category_id,
manufacturer_id, supplier_id)
VALUES ('TEST1', 'Tect', 'ПАРА', 3000.00, 0, 10, 'TEST', 'TEST.jpg', 1, 1, 1);
select * from products where article = 'TEST1';

UPDATE products
SET name = 'TEST2' 
WHERE pid = 31;
-- 8
select * from products where article = 'TEST1';
SELECT COUNT(*) AS used_in_orders FROM prodorders WHERE product_id = 31;
DELETE FROM products WHERE id = 31;