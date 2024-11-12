CREATE DATABASE dbGamarraMarket;
USE dbGamarraMarket;

CREATE TABLE CLIENTE(
id INT PRIMARY KEY auto_increment,
tipo_documento VARCHAR(10) ,
numero_documento VARCHAR(10) ,
nombres VARCHAR(100) ,
apellidos VARCHAR(100) ,
email VARCHAR(100) ,
celular VARCHAR(9) ,
fecha_nacimiento DATE,
activo BOOLEAN default 1
);

INSERT INTO CLIENTE
(tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUES
('DNI', '77889955', 'Alberto', 'Solano Pariona', 'alberto.pariona@gmail.com', '998456323', STR_TO_DATE('10/02/1970', '%d/%m/%Y'));

SELECT * FROM CLIENTE;

INSERT INTO CLIENTE
(tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUES
('DNI', '45781233', 'Alicia', 'Garcia Campos', '', '', STR_TO_DATE('20/03/1980', '%d/%m/%Y')),
('CNE', '315487922', 'Juana', 'Ávila Chumpitaz', 'juana.avila@gmail.com', '923568741', STR_TO_DATE('06/06/1986', '%d/%m/%Y')),
('CNE', '122116633', 'Ana', 'Enriquez Flores', 'ana.enriquez@empresa.com', '', STR_TO_DATE('10/02/1970', '%d/%m/%Y')),
('CNE', '088741589', 'Claudia', 'Perales Ortiz', 'claudia.perales@yahoo.com', '997845263', STR_TO_DATE('25/07/1981', '%d/%m/%Y')),
('DNI', '45122587', 'Mario', 'Barrios Martínez', 'mario.barrios@outlook.com', '986525871', STR_TO_DATE('10/10/1987', '%d/%m/%Y')),
('CNE', '175258564', 'Brunela', 'Tarazona Guerra', 'brunela.tarazona@gmail.com', '995236741', STR_TO_DATE('06/06/1990', '%d/%m/%Y')),
('DNI', '47142536', 'Alejandro', 'Jimenez Huapaya', '', '941525365', STR_TO_DATE('01/06/1989', '%d/%m/%Y')),
('DNI', '15352585', 'Claudia', 'Marquez Litano', 'claudia.marquez@gmail.com', '985814723', STR_TO_DATE('01/10/1991', '%d/%m/%Y')),
('CNE', '465772587', 'Mario', 'Rodríguez Mayo', 'mario.rodriguez@outlook.com', '912662587', STR_TO_DATE('10/11/1987', '%d/%m/%Y')),
('CNE', '837952514', 'Luisa', 'Guerra Ibarra', 'luisa.guerra@yahoo.com', '974422136', STR_TO_DATE('21/12/1988', '%d/%m/%Y')),
('DNI', '74142585', 'Pedro A.', 'Candela Valenzuela', 'pedro.candela@gmail.com', '94148525', STR_TO_DATE('30/06/1995', '%d/%m/%Y')),
('DNI', '53298147', 'Angel M.', 'Rojas Avila', 'angel.rojas@outlook.com', '', STR_TO_DATE('02/03/1975', '%d/%m/%Y')),
('DNI', '11453265', 'Hilario F.', 'Avila Huapaya', '', '985514326', STR_TO_DATE('02/05/2000', '%d/%m/%Y')),
('CNE', '757472186', 'Octavio', 'Marquez Osorio', 'octavio.marquez@yahoo.es', '966223141', STR_TO_DATE('22/09/2000', '%d/%m/%Y')),
('CNE', '558693219', 'Manolo E.', 'Vasquez Saravia', 'manolo.vasquez@outlook.es', '966223141', STR_TO_DATE('22/09/2000', '%d/%m/%Y')),
('DNI', '41552567', 'Genoveva', 'Ortíz Quispe', 'genoveva.ortiz@outlook.es', '92564137', STR_TO_DATE('12/04/2003', '%d/%m/%Y')),
('DNI', '49985471', 'Oscar C.', 'Quiroz Zavala', '', '988223145', STR_TO_DATE('12/10/2004', '%d/%m/%Y')),
('DNI', '44992217', 'Verónica', 'Romero Vargas', 'veronica.romero@yahoo.com', '', STR_TO_DATE('25/08/2002', '%d/%m/%Y')),
('DNI', '00253641', 'Eliseo', 'Prada Ortiz', 'eliseo.prada@yahoo.com', '', STR_TO_DATE('15/09/2004', '%d/%m/%Y'));

SELECT * FROM CLIENTE;

CREATE TABLE VENDEDOR(
id INT PRIMARY KEY auto_increment,
tipo_documento VARCHAR(10) ,
numero_documento VARCHAR(10) ,
nombres VARCHAR(100) ,
apellidos VARCHAR(100) ,
salario DECIMAL(8,2),
celular VARCHAR(9) ,
email VARCHAR(100) ,
activo BOOLEAN default 1
);

INSERT INTO VENDEDOR
(tipo_documento, numero_documento, nombres, apellidos, salario, celular, email)
VALUES
('DNI', '85471236', 'Enrique', 'Pérez Manco', '1500.00', '96521873', 'enrique.perez@outlook.com'),
('DNI', '47259136', 'Sofia', 'Ávila Solis', '1350.00', '', ''),
('DNI', '61542280', 'Marcela', 'Napaico cama', '1600.00', '96521873', 'marcela.napaico@gmail.com'),
('DNI', '742536140', 'Carmelo', 'Rodriguez Chauca', '1550.00', '', 'carmelo.rodriguez@yahoo.com');

SELECT * FROM VENDEDOR;

CREATE TABLE PRENDA ( 
id INT PRIMARY KEY auto_increment,
descripcion VARCHAR(50), 
marca VARCHAR(30), 
cantidad INT, 
talla VARCHAR(10), 
precio DECIMAL(5,2), 
activo BOOLEAN default 1
);

INSERT INTO PRENDA 
(descripcion, marca, cantidad, talla, precio) 
VALUES 
( 'Pantalon Jeans', 'Levis', 60, '28', 65.80), 
( 'Camisa manga corta', 'Adams', 75, '16', 55.00), 
( 'Polo sport', 'Australia', 100, '16', 40.00), 
( 'Camisa manga larga', 'Newport', 150, '16', 42.50), 
( 'Pijama para caballero', 'Adams', 180, '28', 79.50), 
( 'Corbata', 'Maxwell', 85, '16', 14.50), 
( 'Pijama para dama', 'Adams', 170, '24', 55.50), 
( 'Pantalon Jeans', 'Australia', 200, '28', 68.50), 
( 'Camisa Sport', 'John Holden', 85, '16', 88.50), 
( 'Shorts Jeans', 'Pepe Jeans', 185, '28', 77.20);

SELECT * FROM PRENDA

CREATE TABLE VENTA ( 
id INT PRIMARY KEY auto_increment,
fecha_hora TIMESTAMP,
cliente_id INT, 
vendedor_id INT,
activo BOOLEAN DEFAULT 1, 
FOREIGN KEY (cliente_id) REFERENCES CLIENTE(id),
 FOREIGN KEY (vendedor_id) REFERENCES VENDEDOR(id) 
);

INSERT INTO VENTA 
(fecha_hora, cliente_id, vendedor_id) 
VALUES
( '2023-05-01 19:04:08', 4, 1),
( '2023-05-01 19:04:08', 6, 3),
( '2023-05-01 19:04:08', 10, 1),
( '2023-05-01 19:04:08', 18, 4);

SELECT * FROM VENTA;

CREATE TABLE VENTA_DETALLE (
    id INT PRIMARY KEY AUTO_INCREMENT,
    venta_id INT,
    prenda_id INT,
    cantidad INT,
    FOREIGN KEY (venta_id) REFERENCES VENTA(id),
    FOREIGN KEY (prenda_id) REFERENCES PRENDA(id)
);

INSERT INTO VENTA_DETALLE 
(id, venta_id, prenda_id, cantidad) 
VALUES 
(1, 1, 6, 3), 
(2, 1, 3, 5), 
(3, 1, 2, 7), 
(4, 2, 3, 2), 
(5, 3, 7, 4), 
(6, 3, 10, 6), 
(7, 3, 5, 7), 
(8, 3, 2, 4), 
(9, 4, 5, 3), 
(10, 4, 5, 3);

UPDATE CLIENTE
SET celular = '922881101'
WHERE nombres = 'Mario' AND apellidos = 'Rodríguez Mayo';
	
UPDATE CLIENTE
SET celular = '977226604'
WHERE numero_documento = '53298147';

UPDATE CLIENTE
SET activo = 0
WHERE numero_documento IN ('11453265', '74142585', '49985471');

UPDATE CLIENTE
SET celular = ''
WHERE numero_documento IN ('87952514', '55869321', '74142585');

UPDATE CLIENTE
SET activo = TRUE, 
email = 'oscar.quiroz@yahoo.es'
WHERE nombres = 'Oscar César' AND apellidos = 'Quiroz Zavala';

INSERT INTO CLIENTE
(tipo_documento, numero_documento, nombres, apellidos, email, celular, fecha_nacimiento)
VALUE
('DNI', '88225463', 'Gustavo Tadeo', 'Quispe Solorzano', 'gustavo.quispe@gmail.com', '', STR_TO_DATE('13/10/2001', '%d/%m/%Y')),
('DNI', '15753595', 'Daniela', 'Solis Vargas', 'daniel.soliz@outlook.com', '', STR_TO_DATE('09/11/1993', '%d/%m/%Y')),
('DNI', '76314895', 'Milton Gregorio', 'Vasquez Iturrizaga', 'milton.gregorio@yahoo.com', '974815233', STR_TO_DATE('22/06/2004', '%d/%m/%Y')),
('DNI', '84725001', 'Veronica', 'Ancajima Araujo', 'veronica.ancajima@yahoo.com', '', STR_TO_DATE('07/11/1980', '%d/%m/%Y')),
('DNI', '11228514', 'Felicita', 'Marroquin Candela', 'felicita.marroquin@outlook.com', '966001472', STR_TO_DATE('06/06/2006', '%d/%m/%Y')),
('DNI', '51436952', 'Luhana', 'Ortiz Rodriguez', 'luhana.ortiz@outlook.com', '960405017', STR_TO_DATE('25/11/1980', '%d/%m/%Y'));

SELECT * FROM CLIENTE;

UPDATE PRENDA
SET precio = '45.00'
WHERE descripcion = 'Polo sport' AND marca = 'Australia';

UPDATE PRENDA
SET descripcion = 'Corbata Michi elegante'
WHERE id = '6';

DELETE FROM PRENDA
WHERE descripcion in ('Camisa manga corta', 'Camisa Sport');

SELECT * FROM PRENDA;

DELETE FROM VENDEDOR
WHERE nombres = 'Marcela' AND apellidos = 'Napaico Cama';

SELECT * FROM VENDEDOR;

DELETE FROM CLIENTE
WHERE numero_documento IN ('47142536', '77889955');

DELETE FROM CLIENTE
WHERE YEAR(fecha_nacimiento) = 1980;

SELECT * FROM CLIENTE;
