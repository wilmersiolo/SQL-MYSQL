CREATE DATABASE IF NOT EXISTS db_pedidos;
USE db_pedidos;

CREATE TABLE IF NOT EXISTS clientes(
   idCliente INT PRIMARY KEY AUTO_INCREMENT,
   nombreCompleto VARCHAR(100) NOT NULL,
   email VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE IF NOT EXISTS productos(
   idProducto INT PRIMARY KEY AUTO_INCREMENT,
   nombreCompleto VARCHAR(100) NOT NULL,
   precio DECIMAL(8,2) NOT NULL
);

CREATE TABLE IF NOT EXISTS ventas(
   idVenta INT PRIMARY KEY AUTO_INCREMENT,
   idCliente INT FOREIGN KEY (idCliente) REFERENCES clientes (idCliente),
   idProducto INT FOREIGN KEY (idProducto) REFERENCES productos (idProducto),
   cantidad INT NOT  NULL,
   totalVenta DECIMAL(10,2) NOT NULL 
);