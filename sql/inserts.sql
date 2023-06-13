-- Insertar datos en dim_vehiculo
INSERT INTO dim_vehiculo (id, tipo, modelo, marca, fecha_fabricacion, fecha_carga)
VALUES (1, 'Coche', 'Sedan', 'Toyota', '2022-01-01', '2023-06-12'),
(2, 'Camioneta', 'SUV', 'Ford', '2021-05-15', '2023-06-12'),
(3, 'Motocicleta', 'Deportiva', 'Honda', '2023-02-10', '2023-06-12');

-- Insertar datos en dim_tiempo
INSERT INTO dim_tiempo (id, year, month, day, hour)
VALUES (1, 2022, 1, 1, 8),
(2, 2022, 1, 1, 12),
(3, 2022, 1, 1, 16),
(4, 2022, 1, 1, 20),
(5, 2022, 1, 2, 8),
(6, 2022, 1, 2, 12),
(7, 2022, 1, 2, 16),
(8, 2022, 1, 2, 20);

-- Insertar datos en dim_sucursal
INSERT INTO dim_sucursal (id, nombre, fecha_carga, ubicacion, coordenada)
VALUES (1, 'Sucursal A', '2023-06-12', 'Calle Principal 123', '40.7128° N, 74.0060° W'),
(2, 'Sucursal B', '2023-06-12', 'Avenida Central 456', '34.0522° N, 118.2437° W'),
(3, 'Sucursal C', '2023-06-12', 'Plaza Mayor 789', '51.5074° N, 0.1278° W');

-- Insertar datos en dim_metodo_pago
INSERT INTO dim_metodo_pago (id, nombre, fecha_carga)
VALUES (1, 'Tarjeta de crédito', '2023-06-12'),
(2, 'Transferencia bancaria', '2023-06-12'),
(3, 'Efectivo', '2023-06-12');

-- Insertar datos en fact_estadisticas_alquiler
INSERT INTO fact_estadisticas_alquiler (
id_sucursal, id_vehiculo, id_metodo_pago, id_year, id_month, id_day, id_hour, id_alquiler,
balance_general, porc_ingresos_egresos, porc_vehiculos_utilizados, porc_satisfaccion_cliente,
top_metodo_pago, metodo_pago_veces_utilizado, top_vehiculo_alquilado, ingresos, egresos,
duracion_promedio_alquiler, total_alquileres
)
VALUES (1, 1, 1, 1, 1, 1, 1, 1, 1000.00, 80.00, 60.00, 90.00, 1, 10, 1, 5000.00, 4000.00, 5.00, 100),
(2, 2, 2, 1, 1, 1, 1, 2, 1500.00, 75.00, 70.00, 85.00, 2, 8, 2, 6000.00, 4500.00, 6.50, 80),
(3, 3, 3, 1, 1, 1, 1, 3, 2000.00, 90.00, 50.00, 95.00, 3, 12, 3, 8000.00, 5500.00, 4.75, 120);