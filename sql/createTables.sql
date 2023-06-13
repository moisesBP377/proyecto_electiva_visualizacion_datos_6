-- Crear tabla de dimensión de vehículo
CREATE TABLE dim_vehiculo (
  id INT PRIMARY KEY,
  tipo VARCHAR(50),
  modelo VARCHAR(50),
  marca VARCHAR(50),
  fecha_fabricacion DATE,
  fecha_carga DATE
);

-- Crear tabla de dimensión de tiempo
CREATE TABLE dim_tiempo (
  id INT PRIMARY KEY,
  year INT,
  month INT,
  day INT,
  hour INT
);

-- Crear tabla de dimensión de sucursal
CREATE TABLE dim_sucursal (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  fecha_carga DATE,
  ubicacion VARCHAR(100),
  coordenada VARCHAR(50)
);

-- Crear tabla de dimensión de método de pago
CREATE TABLE dim_metodo_pago (
  id INT PRIMARY KEY,
  nombre VARCHAR(50),
  fecha_carga DATE
);

-- Crear tabla de hechos
CREATE TABLE fact_estadisticas_alquiler (
  id_sucursal INT,
  id_vehiculo INT,
  id_metodo_pago INT,
  id_year INT,
  id_month INT,
  id_day INT,
  id_hour INT,
  id_alquiler INT,
  balance_general DECIMAL(10, 2),
  porc_ingresos_egresos DECIMAL(5, 2),
  porc_vehiculos_utilizados DECIMAL(5, 2),
  porc_satisfaccion_cliente DECIMAL(5, 2),
  top_metodo_pago INT,
  metodo_pago_veces_utilizado INT,
  top_vehiculo_alquilado INT,
  ingresos DECIMAL(10, 2),
  egresos DECIMAL(10, 2),
  duracion_promedio_alquiler DECIMAL(8, 2),
  total_alquileres INT,
  PRIMARY KEY (id_alquiler),
  FOREIGN KEY (id_sucursal) REFERENCES dim_sucursal(id),
  FOREIGN KEY (id_vehiculo) REFERENCES dim_vehiculo(id),
  FOREIGN KEY (id_metodo_pago) REFERENCES dim_metodo_pago(id),
  FOREIGN KEY (id_year) REFERENCES dim_tiempo(id),
  FOREIGN KEY (id_month) REFERENCES dim_tiempo(id),
  FOREIGN KEY (id_day) REFERENCES dim_tiempo(id),
  FOREIGN KEY (id_hour) REFERENCES dim_tiempo(id)
);
