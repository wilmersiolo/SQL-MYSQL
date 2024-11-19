CREATE DATABASE IF NOT EXISTS db_empresa;
USE db_empresa;

CREATE TABLE IF NOT EXISTS inventarios (
    idInventario INT PRIMARY KEY AUTO_INCREMENT,
    codigoProducto VARCHAR(50) UNIQUE NOT NULL,
    nombreProducto VARCHAR(100) NOT NULL,
    descripcion TEXT,
    fechaFabricacion DATE,
    fechaRegistro TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    cantidadProducto INT DEFAULT 0,
    precioCompra DECIMAL(10,2) NOT NULL,
    precioVenta DECIMAL(10,2) NOT NULL
);

INSERT INTO inventarios(codigoProducto, nombreProducto, descripcion, fechaFabricacion, fechaRegistro, cantidadProducto, precioCompra, precioVenta)
VALUES("PROD001", "IPHONE 12 PRO MAX", "IPHONE 12 PRO MAX 16 Gb 5G", "2025-03-08", "2025-03-12", 30, 2.000.000.00, 3.500.000.00),
      ("PROD002", "DELL PRO", "DELL PRO 32 Gb 500 Ram", "2025-07-03", "2025-07-05", 20, 1.200.000.00, 1.700.000.00),
      ("PROD003", "MI 11 LITE PRO", "MI 11 LITE PRO 8 Ram +2 5G", "2023-09-07", "2023-09-12", 15, 1.400.000.00, 1.900.500.00),
      ("PROD004", "SAMSUNG SMARTV", "SAMSUNG SMARTV 25 Pulgadas", "2024-05-06", "2024-06-12", 45, 900.000.00, 1.200.700.00),
      ("PROD005", "LAVADORA GL", "LAVADORA GL ULTIMATE GENERATION 45 Wah", "2022-01-09", "2022-01-09", 55, 500.000.00, 800.000.00);

      
      