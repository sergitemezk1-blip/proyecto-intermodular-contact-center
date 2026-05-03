CREATE DATABASE contact_center;
USE contact_center;
CREATE TABLE cliente (
	id_cliente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Ciudad VARCHAR(50),
    Zona VARCHAR(50)
);
SELECT database();
CREATE TABLE Agente (
	id_Agente INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Tipo_Empleado ENUM('AGENTE', 'SUPERVISOR'),
    Turno VARCHAR(20),
    Departamento VARCHAR(50)
);
SELECT DATABASE();
CREATE TABLE Campaña (
	id_campaña INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Tipo ENUM('INBOUND', 'OUTBOUND')
    );
    
DROP TABLE Campaña;

CREATE TABLE Campana (
	id_Campana INT AUTO_INCREMENT PRIMARY KEY,
    Nombre VARCHAR(100),
    Tipo ENUM('INBOUND', 'OUTBOUND')
    );
    
CREATE TABLE Cliente_Campana (
	Id_Cliente INT,
    Id_Campana INT,
    PRIMARY KEY (id_cliente, id_campana),
    FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    FOREIGN KEY (id_campana) REFERENCES campana(id_campana)
);
CREATE TABLE llamada (
	Id_llamada INT AUTO_INCREMENT PRIMARY KEY,
    Fecha DATE,
    Hora_Inicio TIME,
    Hora_Fin TIME,
    Tipo_Llamada ENUM('INBOUND', 'OUTBOUND'),
    Estado ENUM('CONTACTO', 'NO_CONTACTO', 'DESBORDE'),
    Id_Cliente INT,
    Id_Empleado INT,
    Id_Campana INT,
    FOREIGN KEY (Id_Cliente) REFERENCES Cliente(Id_Cliente),
    FOREIGN KEY (Id_Empleado) REFERENCES Agente(Id_Agente),
    FOREIGN KEY (Id_Campana) REFERENCES Campana(Id_Campana)
);

SHOW CREATE TABLE llamada;

ALTER TABLE llamada DROP FOREIGN KEY llamada_ibfk_1;
ALTER TABLE llamada DROP FOREIGN KEY llamada_ibkf_2;
ALTER TABLE llamada DROP FOREIGN KEY llamada_ibkf_3;

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_cliente
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_empleado
FOREIGN KEY (id_empleado) REFERENCES agente(id_agente);

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_campana
FOREIGN KEY (id_campana) REFERENCES campana(id_campana);

ALTER TABLE agente CHANGE id_Agente is_agente INT;
ALTER TABLE campana CHANGE id_Campana id_campana INT;

CREATE TABLE llamada
ADD CONSTRAINT fk_llamada_cliente
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);

CREATE TABLE llamada
ADD CONSTRAINT fk_llamada_empleado
FOREIGN KEY (id_empleado) REFERENCES agente(id_agente);

CREATE TABLE llamada
ADD CONSTRAINT fk_llamada_campana
FOREIGN KEY (id_campana) REFERENCES campana(id_campana)

DESCRIBE llamada;
SHOW CREATE TABLE llamada;

ALTER TABLE llamada DROP FOREIGN KEY fk_llamada_cliente;
ALTER TABLE llamada DROP FOREIGN KEY llamada_ibfk_2;
ALTER TABLE llamada DROP FOREIGN KEY llamada_ibfk_3;

SHOW CREATE TABLE llamada;

ALTER TABLE llamada DROP FOREIGN KEY llamada_ibfk_2;
ALTER TABLE llamada DROP FOREIGN KEY llamada_ibfk_3;

SHOW CREATE TABLE llamada;

ALTER TABLE agente
CHANGE is_agente id_agente INT NOT NULL AUTO_INCREMENT;

ALTER TABLE llamada CHANGE Id_llamada id_llamada INT AUTO_INCREMENT;
ALTER TABLE llamada CHANGE Id_Cliente id_cliente INT;
ALTER TABLE llamada CHANGE Id_Empleado id_empleado INT;
ALTER TABLE llamada CHANGE Id_Campana id_campana INT;

SHOW CREATE TABLE llamada;

ALTER TABLE llamada CHANGE Hora_Inicio hora_inicio TIME;
ALTER TABLE llamada CHANGE Fecha fecha DATE;
ALTER TABLE llamada CHANGE Hora_Fin  hora_fin TIME;
ALTER TABLE llamada CHANGE Estado estado ENUM('CONTACTO', 'NO CONTACTO');
ALTER TABLE llamada CHANGE Tipo_Llamada tipo_llamada ENUM('INBOUND', 'OUTBOUND');

ALTER TABLE llamada DROP INDEX id_empleado;
ALTER TABLE llamada DROP INDEX id_campana;

ALTER TABLE llamada ADD INDEX idx_llamada_empleado (id_empleado);
ALTER TABLE llamada ADD INDEX idx_llamada_campana (id_campana);

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_cliente
FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente);

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_empleado
FOREIGN KEY (id_empleado) REFERENCES agente(id_agente);

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_campana
FOREIGN KEY (id_campana) REFERENCES campana(id_campana);

SHOW CREATE TABLE agente;

ALTER TABLE agente
MODIFY id_agente INT NOT NULL AUTO_INCREMENT;

ALTER TABLE llamada
MODIFY id_empleado INT NOT NULL;

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_empleado
FOREIGN KEY (id_empleado) REFERENCES agente(id_agente);

SHOW CREATE TABLE llamada;

SHOW CREATE TABLE agente;

ALTER TABLE campana
CHANGE id_Campana id_campana INT;

ALTER TABLE llamada
DROP FOREIGN KEY fk_llamada_campana;

ALTER TABLE llamada
DROP FOREIGN KEY fk_llamada_campana;

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_campana
FOREIGN KEY (id_campana) REFERENCES campana(id_campana);

ALTER TABLE agente CHANGE Nombre nombre VARCHAR(100);
ALTER TABLE agente CHANGE Tipo_Empleado tipo_empleado ENUM('AGENTE', 'SUPERVISOR');
ALTER TABLE agente CHANGE Turno turno VARCHAR(20);
ALTER TABLE agente CHANGE Departamento departamento VARCHAR(50);

SHOW CREATE TABLE llamada;

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_campana
FOREIGN KEY (id_campana) REFERENCES campana(id_campana);

INSERT INTO cliente (id_cliente, nombre, telefono, email)
VALUES
(1, 'Juan Perez', '600123456', 'juan@gmail.com'),
(2, 'Maria Gomez', '600654321', 'maria@gmail.com'),
(3, 'Carlos Ruis', '600987654', 'carlos@gmail.com');

DESCRIBE cliente;

ALTER TABLE cliente
ADD telefono VARCHAR(15),
ADD email VARCHAR(50);

DESCRIBE cliente;

INSERT INTO cliente (id_cliente, nombre, telefono, email, ciudad, zona)
VALUES
(1, 'Juan Perez', '600123456', 'juan@gmail.com', 'Madrid', 'Centro'),
(2, 'Maria Gomez', '600654321', 'maria@gmail.com', 'Madrid', 'Sur'),
(3, 'Carlos Ruiz', '600987654', 'carlos@gmail.com', 'Madrid', 'Norte' );

SELECT * FROM cliente;

UPDATE cliente
SET ciudad = 'Madrid', zona = 'centro'
WHERE id_cliente = 1;

UPDATE cliente
SET ciudad = 'Madrid', zona = 'sur'
WHERE id_cliente = 2;

UPDATE cliente
SET ciudad = 'Madrid', zona = 'norte'
WHERE id_cliente = 3;

SELECT * FROM cliente;

INSERT INTO agente (id_agente, nombre, tipo_empleado, turno, departamento)
VALUES
(1, 'Pamella Garzon', 'Agente', 'Mañana', 'Ventas'),
(2, 'Sergio Mejia', 'Agente', 'Tarde', 'Soporte'),
(3, 'Ana Lopez', 'Agente', 'Mañana', 'Ventas');

SELECT * FROM agente;

UPDATE agente
SET tipo_empleado = 'SUPERVISOR'
WHERE id_agente = 3;

SELECT * FROM agente;

DESCRIBE campana;

ALTER TABLE CAMPANA
CHANGE id_campana id_campana INT AUTO_INCREMENT;

DESCRIBE campana;

SHOW CREATE TABLE llamada;

ALTER TABLE llamada
DROP FOREIGN KEY fk_llamada_campana;

ALTER TABLE llamada
ADD CONSTRAINT fk_llamada_campana
FOREIGN KEY (id_cliente) REFERENCES campana(id_campana);

SHOW CREATE TABLE llamada;

ALTER TABLE llamada
DROP FOREIGN KEY fk_llamada_campana;

ALTER TABLE llamada
DROP FOREIGN KEY fk_llamada_campana;

DROP TABLE llamada;

CREATE TABLE llamada (
id_llamada INT AUTO_INCREMENT PRIMARY KEY,
fecha DATE,
hora_inicio TIME,
hora_fin TIME,
tipo_llamada ENUM('INBOUND', 'OUTBOUND'),
estado ENUM('CONTACTO', 'NO CONTACTO'),
id_cliente INT NULL,
id_empleado INT NOT NULL,
id_campana INT NULL, 

CONSTRAINT fk_llamada_cliente
	FOREIGN KEY (id_cliente) REFERENCES cliente(id_cliente),
    
CONSTRAINT fk_llamada_empleado
	FOREIGN KEY (id_empleado) REFERENCES agente(id_agente),
    
CONSTRAINT fk_llamada_campana
	FOREIGN KEY (id_campana) REFERENCES campana(id_campana)
    );
    
SHOW CREATE TABLE llamada;

INSERT INTO llamada
(fecha, hora_inicio, hora_fin, tipo_llamada, estado, id_cliente, id_empleado, id_campana)
VALUES
('2024-04-10', '10:00:00', '10:05:00', 'OUTBOUND', 'CONTACTO', 1, 1, 1),
('2024-04-10', '10:10:00', '10:12:00', 'OUTBOUND', 'NO CONTACTO', 2, 2, 1),
('2024-04-10', '11:00:00', '11:07:00', 'OUTBOUND', 'NO CONTACTO', 3, 1, 2);

SELECT * FROM campana;

INSERT INTO campana (nombre, tipo)
VALUES
('tarjeta de credito', 'OUTBOUND'),
('creditos de consumo', 'OUTBOUND'),
('soporte pedidos', 'INBOUND');

SELECT * FROM campana;

SHOW CREATE TABLE llamada;

SELECT * FROM llamada;

SELECT estado, LENGTH(estado)
FROM llamada;

UPDATE llamada
SET estado = TRIM(estado)
WHERE id_llamada IS NOT NULL;

SET SQL_SAFE_UPDATES =0;

UPDATE llamada
SET estado = TRIM(estado);

UPDATE llamada
SET estado = TRIM(estado)
WHERE id_llamada > 0;

SELECT estado, LENGTH(estado)
FROM llamada;

SELECT *
FROM llamada
WHERE estado ='';

DELETE FROM llamada;

SELECT estado, LENGTH(estado)
FROM llamada;

SELECT COUNT(*) FROM llamada;

SHOW CREATE TABLE llamada;

SELECT *
FROM campana;

SELECT *
FROM cliente;

SELECT *
FROM agente;

SELECT * 
FROM llamada;

INSERT INTO llamada
(fecha, hora_inicio, hora_fin, tipo_llamada, estado, id_cliente, id_empleado, id_campana)
VALUES
('2024-04-10', '10:00:00', '10:05:00', 'OUTBOUND', 'CONTACTO', 1, 1, 1);

SELECT * FROM llamada;

SELECT
	estado,
    LENGTH(estado)
FROM llamada;

INSERT INTO llamada
(fecha, hora_inicio, hora_fin, tipo_llamada, estado, id_cliente, id_empleado, id_campana)
VALUES
('2024-04-10', '11:00:00', '11:05:00', 'OUTBOUND', 'NO_CONTACTO', 1, 1, 1);

SELECT *
FROM llamada
WHERE estado NOT IN ('CONTACTO', 'NO CONTACTO')
	OR estado IS NULL;
    
SELECT l.id_llamada, c.nombre, a.nombre
FROM llamada l
JOIN cliente c ON l.id_cliente = c.id_cliente
JOIN agente a ON l.id_empleado = a.id_agente;

INSERT INTO llamada
(fecha, hora_inicio, hora_fin, tipo_llamada, estado, id_cliente, id_empleado, id_campana)
VALUES
('2024-04-10', '10:10:00', '10:12:00', 'OUTBOUND', 'NO CONTACTO', 2, 2, 1),
('2024-04-10', '11:00:00', '11:07:00', 'OUTBOUND', 'NO CONTACTO', 3, 1, 2),
('2024-04-10', '12:20:00', '12:35:00', 'OUTBOUND', 'CONTACTO', 1, 1, 1);

SELECT * FROM agente;
SELECT * FROM cliente;
SELECT * FROM campana;
SELECT * FROM llamada;

SELECT estado, LENGTH(estado)
FROM llamada;

SELECT *
FROM llamada
WHERE estado = '' OR estado IS NULL;

UPDATE llamada
SET estado = 'NO CONTACTO'
WHERE estado = '';

SELECT *
FROM llamada
WHERE estado = '' OR estado IS NULL;

SHOW TABLES;

DESCRIBE cliente;
DESCRIBE agente;
DESCRIBE llamada;
DESCRIBE campana;

SELECT 
	a.nombre AS agente,
    COUNT(l.id_llamada) AS total_llamadas
FROM llamada l
JOIN agente a
	ON l.id_empleado = a.id_agente
GROUP BY a.nombre
ORDER BY total_llamadas DESC;

SELECT 
	a.nombre AS agente,
    COUNT(l.id_llamada) AS total_llamadas,
    SUM(CASE WHEN l.estado = 'CONTACTO' THEN 1 ELSE 0 END) AS contacto,
    SUM(CASE WHEN l.estado = 'NO CONTACTO' THEN 1 ELSE 0 END) AS no_contacto
FROM llamada l
JOIN agente a
	ON l.id_empleado = a.id_agente
GROUP BY a.nombre
ORDER BY total_llamadas DESC;

SELECT
	a.nombre AS agente,
    COUNT(l.id_llamada) AS total_llamadas,
    SUM(CASE WHEN l.estado = 'CONTACTO' THEN 1 ELSE 0 END) AS contacto,
    ROUND(
		(SUM(CASE WHEN l.estado = 'CONTACTO' THEN 1 ELSE 0 END) *  100.0)
        / COUNT(l.id_llamada),
	2) AS porcentaje_efectividad
    FROM llamada l
    JOIN agente a
		ON l.id_empleado = a.id_agente
	GROUP BY a.nombre;
    
    CREATE USER 'agente_user'@'localhost' IDENTIFIED BY '1234';
    CREATE USER 'supervisor_user'@'localhost' IDENTIFIED BY '1234';
    CREATE USER 'admin_cc'@'localhost' IDENTIFIED BY '1234'

USE contact_center;

GRANT SELECT ON contact_center.* TO 'agente_user'@'localhost';

GRANT SELECT, INSERT, UPDATE ON contact_center.* TO 'supervisor_user'@'localhost';

GRANT ALL PRIVILEGES ON contact_center.* TO 'admin_cc'@'localhost';

FLUSH PRIVILEGES;

SELECT user, host FROM mysql.user;

SHOW GRANTS FOR 'agente_user'@'localhost';
SHOW GRANTS FOR 'supervisor_user'@'localhost';
SHOW GRANTS FOR 'admin_cc'@'localhost';