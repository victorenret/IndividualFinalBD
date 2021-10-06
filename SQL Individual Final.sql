/*insercion datos en tabla usuario*/
INSERT INTO usuario (id_usuario, nombre, apellido, edad, correo_usuario, cant_veces) VALUES 
('1', 'victor', 'retamal', 15, 'correo1@gmail.com', '3'),
('2', 'andres', 'goodson', 20, 'correo2@gmail.com', '10'),
('3', 'luis', 'lopez', 23, 'correo3@gmail.com', '2'),
('4', 'fernando', 'silva', 12, 'correo4@gmail.com', '9'),
('5', 'pedro', 'torrez', 14, 'correo5@gmail.com', '5');

/*------------------------------------------------------------------------------------------------------------*/

/*insercion datos en tabla operario*/
INSERT INTO operario (id_operario, nombre, apellido, edad, correo_operario, cant_veces) 
VALUES ('1', 'ana', 'tobar', 30, 'operario1@gmail.com', 10),
('2', 'constanza', 'isla', 31, 'operario2@gmail.com', 15),
('3', 'dominic', 'galarce', 32, 'operario3@gmail.com', 20),
('4', 'georgina', 'fuensalida', 33, 'operario4@gmail.com', 25),
('5', 'daniela', 'cepeda', 34, 'operario5@gmail.com', 30);
/*------------------------------------------------------------------------------------------------------------*/

/*insercion datos en tabla soporte*/
INSERT INTO soporte(id_soporte, fecha, evaluacion, id_operario, id_usuario, comentario)
VALUES(1,'2021-10-05',7,1,1,'exelente servicio'),(2,'2021-10-05',7,1,1,'exelente servicio'),
(3,'2021-10-05',7,1,1,'exelente servicio'),(4,'2021-10-05',7,2,1,'exelente servicio'),
(5,'2021-10-05',5,2,1,'bueno el servicio'),(6,'2021-10-05',5,3,1,'bueno el servicio'),
(7,'2021-10-05',5,3,1,'bueno el servicio'),(8,'2021-10-05',4,3,1,'mas o menos el servicio'),
(9,'2021-10-05',4,5,1,'mas o menos el servicio'),(10,'2021-10-05',1,5,1,'pesimo servicio');

/*Seleccione las 3 operaciones con mejor evaluación.*/
SELECT * FROM soporte ORDER BY evaluacion DESC LIMIT 3;

/*Seleccione las 3 operaciones con menos evaluación.*/
SELECT * FROM soporte ORDER BY evaluacion ASC LIMIT 3;

/*Seleccione al operario que más soportes ha realizado.*/
SELECT nombre, MAX(cant_veces) as Contador FROM operario;

/*Seleccione al cliente que menos veces ha utilizado la aplicación.*/
SELECT nombre, MIN(cant_veces) as Contador FROM usuario;

/*Agregue 10 años a los tres primeros usuarios registrados.*/
UPDATE usuario SET edad = edad + 10 WHERE id_usuario = 1 or id_usuario = 2 or id_usuario = 3;


/*Renombre todas las columnas ‘correo electrónico’. El nuevo nombre debe ser email.*/
/*Tabla operario*/
ALTER TABLE operario RENAME COLUMN correo_operario TO email;
/*Tabla Usuario*/
ALTER TABLE usuario RENAME COLUMN correo_usuario TO email;

/*Seleccione solo los operarios mayores de 20 años.*/
SELECT nombre, edad FROM operario WHERE edad >20;









