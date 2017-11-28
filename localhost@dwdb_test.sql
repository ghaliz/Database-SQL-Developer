--Datos de la primera tabla de categorías de comidas
insert into product_category values(1, 'desayuno'); 
insert into product_category values(2, 'comida'); 
insert into product_category values(3,'cena'); 
insert into product_category values(4, 'postre'); 
insert into product_category values(5, 'bebidas'); 
insert into product_category values(6, 'snacks');

--ERROR (ya se borró)
insert into product_category values(7, 'entrées');
insert into product_category values(8, 'lunch');
insert into product_category values(9, 'bebidas calientes');
insert into product_category values(10, 'dulces');
insert into product_category values(11, 'pedidos');


select *
from product_category;

--Datos de la segunda tabla de productos --> comidas
insert into products values(100, 'maruchan', 10.00, 2);  
insert into products values(101, 'burrito', 15.00, 2); 
insert into products values(102, 'quesadilla', 16.00, 2); 
insert into products values(103, 'ruffles', 12.00, 6); 
insert into products values(104, 'cocacola', 13.00, 5); 
insert into products values(105, 'pastel', 20.00, 4); 
insert into products values(106, 'hotcakes', 30.00, 1); 
insert into products values(107, 'cereal', 25.00, 1); 
insert into products values(108, 'pollo', 40.00, 3);

--ERROR
insert into products values(109, 'ensalada', 30.00, 7);
insert into products values(110, 'sandwich', 20.00, 8);
insert into products values(111, 'café', 15.00, 9);
insert into products values(112, 'tacos', 17.00, 2);
insert into products values(113, 'teriyaki', 45.00, 2);
--Eliminando el error ^
delete 
from products
where product_id in (109,110,111,112,113);

--Adición de los 30 productos
insert into products values(109,'huevos revueltos',20.00,1);
insert into products values(110,'huevos rancheros',25.00,1);
insert into products values(111,'huevos divorciados',30,00,1);
insert into products values(112,'huevos estrellados',25.00,1);
insert into products values(113,'omelette du fromage',40.00,1);
insert into products values(114,'enchiladas',35,00,2);
insert into products values(115,'enfrijoladas',30.00,2);
insert into products values(116,'enmoladas',30.00,2);
insert into products values(117,'flautas',42.00,2);
insert into products values(118,'tacos dorados',40.00,2);
insert into products values(119,'pavo con gravy',50.00,3);
insert into products values(120,'pollo con gravy',45.00,3);
insert into products values(121,'res con gravy',45.00,3);
insert into products values(122,'cerdo con gravy',40.00,3);
insert into products values(123,'pescado con gravy',35.00,3);
insert into products values(124,'pastel de queso',20.00,4);
insert into products values(125,'pastel de zanahoria',20.00,4);
insert into products values(126,'pastel de chocoalte',20.00,4);
insert into products values(127,'pastel de nieve',25.00,4);
insert into products values(128,'pastel de vainilla',20.00,4);
insert into products values(129,'fanta',13.00,5);
insert into products values(130,'sprite',13.00,5);
insert into products values(131,'7-up',13.00,5);
insert into products values(132,'dr pepper',13.00,5);
insert into products values(133,'root beer',13.00,5);
insert into products values(134,'churros',15.00,6);
insert into products values(135,'fritangas',10.00,6);
insert into products values(136,'coctel de elote',25.00,6);
insert into products values(137,'gorditas de nata',10.00,6);
insert into products values(138,'galletas',10.00,6);


select *
from products;

--Datos de la tercera tabla de ventas 
insert into sales values(100, 2, 15112017);
insert into sales values(105, 4, 13112017);
insert into sales values(108, 3, 17112017);
insert into sales values(103, 6, 10112017);
insert into sales values(107, 1, 9112017);
insert into sales values(102, 2, 12112017);
insert into sales values(104, 6, 16112017);
insert into sales values(102, 2, 17112017);

--ERROR (ya se borró)
insert into sales values(111, 9, 17112017);
insert into sales values(112, 2, 17112017);
insert into sales values(109, 7, 17112017);
insert into sales values(113, 2, 17112017);
insert into sales values(110, 8, 17112017);

select *
from sales;

--Eliminar el error en el cual se repetían 2 veces las tablas, se borrarron y se añadieron de nuevo después

delete 
from products 
where product_id in (100,101,102,103,104,105,106,107,108,109);

select *
from products;

delete
from sales 
where product_id in(100,105,108,103,107,102,104,102);

select *
from sales;

delete
from product_category
where product_category_id in (1,2,3,4,5,6);

select *
from product_category;

delete
from product_category
where product_category_id in(7,8,9,10,11);

select *
from product_category;

delete 
from sales
where product_id in (111,112,109,113,110);

--Eliminación de la tabla <sales>

delete 
from sales;

--20 datos diferentes en la nueva tabla de <sales> --> <sales_new>

insert into sales_new values(1,100,2);
insert into sales_new values(1,102,2);
insert into sales_new values(1,130,5);
insert into sales_new values(1,128,4);

insert into sales_new values(2,109,1);
insert into sales_new values(2,110,1);
insert into sales_new values(2,132,5);
insert into sales_new values(2,127,4);

insert into sales_new values(3,115,2);
insert into sales_new values(3,116,2);
insert into sales_new values(3,133,5);
insert into sales_new values(3,124,4);

insert into sales_new values(4,117,2);
insert into sales_new values(4,118,2);
insert into sales_new values(4,130,5);
insert into sales_new values(4,125,4);

insert into sales_new values(5,119,3);
insert into sales_new values(5,120,3);
insert into sales_new values(5,131,5);
insert into sales_new values(5,125,4);

insert into sales_new values(6,122,3);
insert into sales_new values(6,123,3);
insert into sales_new values(6,130,5);
insert into sales_new values(6,126,4);

insert into sales_new values(7,122,3);
insert into sales_new values(7,120,3);
insert into sales_new values(7,131,5);
insert into sales_new values(7,125,4);

insert into sales_new values(8,120,3);
insert into sales_new values(8,122,3);
insert into sales_new values(8,131,5);
insert into sales_new values(8,125,4);

insert into sales_new values(9,120,3);
insert into sales_new values(9,122,3);
insert into sales_new values(9,131,5);
insert into sales_new values(9,125,4);

insert into sales_new values(10,120,3);
insert into sales_new values(10,122,3);
insert into sales_new values(10,131,5);
insert into sales_new values(10,125,4);

insert into sales_new values(11,120,3);
insert into sales_new values(11,122,3);
insert into sales_new values(11,131,5);
insert into sales_new values(11,125,4);

insert into sales_new values(12,120,3);
insert into sales_new values(12,122,3);
insert into sales_new values(12,131,5);
insert into sales_new values(12,125,4);

insert into sales_new values(13,120,3);
insert into sales_new values(13,122,3);
insert into sales_new values(13,131,5);
insert into sales_new values(13,125,4);

insert into sales_new values(14,120,3);
insert into sales_new values(14,122,3);
insert into sales_new values(14,131,5);
insert into sales_new values(14,125,4);

insert into sales_new values(15,120,3);
insert into sales_new values(15,122,3);
insert into sales_new values(15,131,5);
insert into sales_new values(15,125,4);

insert into sales_new values(16,120,3);
insert into sales_new values(16,122,3);
insert into sales_new values(16,131,5);
insert into sales_new values(16,125,4);

insert into sales_new values(17,120,3);
insert into sales_new values(17,122,3);
insert into sales_new values(17,131,5);
insert into sales_new values(17,125,4);

insert into sales_new values(18,120,3);
insert into sales_new values(18,122,3);
insert into sales_new values(18,131,5);
insert into sales_new values(18,125,4);

insert into sales_new values(19,120,3);
insert into sales_new values(19,122,3);
insert into sales_new values(19,131,5);
insert into sales_new values(19,125,4);

insert into sales_new values(20,120,3);
insert into sales_new values(20,122,5);
insert into sales_new values(20,131,5);
insert into sales_new values(20,125,4);

--Ventas capturadas
select *
from sales_new; 

--Este Query une la tabla de ventas con la de los productos, pero muestra qué es el producto que se vendió, su precio y la categoría, es decir, lo que está en la tabla
--de ventas (sales_new) que son sólo los números, enseña qué es 
select *
from sales_new s1
join products p1
  on s1.product_id = p1.product_id
join product_category pc1
  on pc1.product_category_id = s1.product_category_id;

--Este Query muestra lo que se compró, precio y categoría. Sería básicamente la tabla de sales pero cambia el valor del product_id por el nombre de esa comida
--Al igual que la categoría, sustituye el número de la categoría con el precio
select s1.sale_id,
--ALIAS
p1.product_name, 
p1.product_price,
pc1.category_name
from sales_new s1
join products p1
  on s1.product_id = p1.product_id
join product_category pc1
  on pc1.product_category_id = s1.product_category_id;
  
--Este Query muestra las 20 comidas vendidas incluyendo su categoría y precio (se va a de la línea 1 a la 20 sin repetir las otras comidas entre cada clase)
select s1.sale_id,
p1.product_name, 
p1.product_price,
pc1.category_name
from sales_new s1
join products p1
  on s1.product_id = p1.product_id
join product_category pc1
  on pc1.product_category_id = s1.product_category_id
group by s1.sale_id;


--Este Query sólo muestra las ventas indicadas en el <where> que son la 1,3,5,7,9,11,13 y 15
--Muestra la comida y su categoría en forma escrita (qué son) 
select s1.sale_id,
p1.product_name, 
p1.product_price,
pc1.category_name
from sales_new s1
join products p1
  on s1.product_id = p1.product_id
join product_category pc1
  on pc1.product_category_id = s1.product_category_id
where s1.sale_id in (1, 3, 5, 7, 9, 11, 13,15)
group by s1.sale_id;




