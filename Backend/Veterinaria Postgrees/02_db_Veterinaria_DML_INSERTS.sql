
/* ----------------------------
 * ------ VETERINARIA ENTREPATAS ---------
 * ----------------------------
 * 
 * 
 * ========= DML INSERTS =============
 */

-- TABLAS
delete  from compras_clientes cascade;
delete  from ventas_productos cascade;
delete  from ventas cascade;
delete  from productos cascade;
delete  from proveedores cascade;
delete  from facturas_detalles cascade;
delete  from facturas cascade;
delete  from empleados cascade;
delete  from clientes cascade;


-- Alteramos la secuencia auto incrementable id 
alter sequence id_sec_provee restart with 1;
alter sequence id_sec_produc restart with 1;
alter sequence id_sec_empl restart with 1;
alter sequence id_sec_vent restart with 1;
alter sequence id_sec_cli restart with 1;
alter sequence id_sec_compr_cli restart with 1;
alter sequence id_sec_vent_prod restart with 1;
alter sequence id_sec_fact restart with 1;
alter sequence id_sec_fact_det restart with 1;

-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA PROVEEDORES ========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'proveedores';

insert into proveedores(empresa, tipo_producto, direccion, nro_tel_princ, nro_tel_sec, email)values
('Purina', 'Concentrado,', 'Calle 40 sur #72L-40', '3107187229', '601-4853456', 'purina@hotmail.com' ),
('Dow Chow' , 'Concentrado' , 'Carrera 53F #2-89' , '314567890', '6015678976', 'dogchow@gmail.com'),
('Oh mai Gat' , 'Concentrado' , 'Avenida 12 #34-43' , '3125678976', '6016789876', 'ohmaigat@gmail.com'),
('Cama' , 'Lujos' , 'Calle 56 #54-87' , '3124567890', '6013456789', 'camasycamitas@gmail.com'),
('Collares' , 'Lujos' , 'Carrera 68 #24-56' , '3145678908', '-', 'Collares@hotmail.com'),
('Jeringas', 'Medicamentos' , 'Av. Carrera 54#3-90' , '3124567890', '6013456786', 'medicamentos@gmail.com'),
('Medicamentos' , 'medicamentos' , 'Carrera 53F #2-67' , '3157379877', '6012678978', 'medicamentos@gmail.com'),
('Sin Especificar' , 'Sin Especificar' , 'Sin Especificar' , 'Sin Especificar', 'Sin Especificar', 'Sin Especificar');

select * from proveedores;

-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA PRODUCTOS ===========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'productos';

-- BEBIDAS
insert into productos(id_proveedor,codigo, imagen, nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
(1,'P01', 'https://www.depelos.co/static/food/3509-Concentrado%20Purina%20Pro%20Plan%20Razas%20Medianas%20Adult1200x800q98.jpg' ,  'Proplan Razas medianas', 'Purina' ,'Concentrado', 'Purina' , 6.3 , 195.000 , 20 ),
(4,'P02', 'https://www.mandw.com.co/hubfs/Comida/dog%20chow%20adultos%20razas%20pequen%CC%83as.png', 'Dog Chow adultos minis y pequeños.', 'Dog Chow' ,'Concentrado', 'Dog Chow' , 0.750 , 187.000 , 2 ),
(5,'P04','https://i0.wp.com/www.amiscot.com/wp-content/uploads/2020/12/products-purple_package.png?fit=519%2C679&ssl=1' , 'Juguetones y exploradores', 'Oh mai Gat' ,'Concentrado', 'Oh mai Gat' , 2.25 , 90.000 , 30 ),
(6,'P05', 'https://www.supermascotas.com.co/wp-content/uploads/2023/05/7702521679514_1.jpg' , 'Purina Felix', 'Purina' ,'Concentrado', 'Purina' , 1.25 , 100.000 , 3 );


-- JUGUETES Y CAMAS
insert into productos(id_proveedor,codigo, imagen , nombre, marca, tipo, grupo, peso, precio_unidad, stock) values 
(8,'JU01', 'https://www.bazzarbog.com/66376-large_default/juguete-para-perros.jpg' ,'Mascota', 'Juguete' ,'Juguete mascotas', 'Juguete' , 1.00 , 25000 , 100 ),
(8,'JU02', 'https://cdnx.jumpseller.com/la-cali/image/24086190/7707347582246.jpg?1653319232' , 'Juguete', 'Genérico' ,'Juguete mascota', 'Juguete' , 0.400 , 20000 , 500 ),
(8,'JU03', 'https://pepeganga.vtexassets.com/arquivos/ids/552095/102500971-1.jpg?v=637462353241600000' ,'Pollo peluche para mascota.', 'Genérico' ,'mascota', 'Juguete' , 1.00 , 17000 , 30 ),
(8,'JU04', 'https://animalsveterinaria.vteximg.com.br/arquivos/ids/157384-1000-1000/CAPJUG005.jpg?v=638042185387270000' ,'Juguete de perro.', 'Genérico' ,'mascota', 'Juguete' , 1.00 , 2200 , 100 );


-- CAMAS Y RASCADORES
insert into productos(id_proveedor,codigo, imagen,  nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
(8,'CAM01', 'https://laika.com.co/cdn-cgi/image/fit=scale-down,width=400,format=auto,quality=80,onerror=redirect/https://laikapp.s3.amazonaws.com/dev_images_products/e8c82fa0008a0336b0a0db56c6cd1031_1688662434.jpg' ,'Camas y rascadores', 'Camas' ,'Camas mascotas', 'Camas y Camitas' , 5 , 80.000 , 5 ),
(8,'CAM02', 'https://i.linio.com/p/908acd5010cb3b25c39dd9e4adc3587c-product.webp' ,'Cama globo.', 'Mascotas' ,'Mascotiando', 'Burbuja' , 7 , 90.000 , 2 ),
(8,'CAM03', 'https://www.goldenkingpets.com/cdn/shop/products/Picture18_1_b6fbe9b5-5a38-4d88-97bf-593d66596246_1800x1800.jpg?v=1659288763' ,'Camas.', 'Mascota' ,'Camita', 'Camas' , 5 , 85.000 , 20 ),
(8,'CAM04', 'https://m.media-amazon.com/images/I/719JD5-NBJL._AC_SL1500_.jpg','Rascadores.', 'Negro' ,'Pisos', 'Rascadores' , 6 , 80.000 , 10 );

select * from productos;

-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA EMPLEADOS ===========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'empleados';

select * from empleados;

-- Repositores/as
insert into empleados (nombre, apellido, edad, fecha_nac, tipo_doc, nro_doc, cuil, direccion
, nro_tel_princ, nro_tel_sec, email, cargo, antiguedad, fecha_ingreso, salario_anual) values
('Marcos', 'Castro', 45, '1971/05/01', 'DNI', '48967156','33489671564', 'Figueroa Alcorta 22', '1178654356', '+5491178654356'
, 'marcosCastro2002_lop@hotmail.com', 'Repositor', '4 añs', '2017/09/6', 70000),
('Marcelo', 'Perez', 28, '1988/03/17', 'DNI', '39345679', '12-39345679-9', 'Carabobo 06', '+5491138765433', '-'
, 'MarceloPerez@gmail.com', 'Repositor', '9 meses', '2019/04/14', 56000);


-- Gerentes/as
insert into empleados (nombre, apellido, edad, fecha_nac, tipo_doc, nro_doc, cuil, direccion
, nro_tel_princ, nro_tel_sec, email, cargo, antiguedad, fecha_ingreso, salario_anual) values
('Marcelo', 'Castro', 28, '1989/04/06', 'DNI', '39886386', '14-39886386-5', 'Los Patos 123', '+549118567453', '+549118567453'
, 'marcelocastro.746_jj@gmail.com', 'Gerente', '2 años y 5 meses', '2019/02/11', 120000);

-- Stack Tecnico
insert into empleados (nombre, apellido, edad, fecha_nac, tipo_doc, nro_doc, cuil, direccion
, nro_tel_princ, nro_tel_sec, email, cargo, antiguedad, fecha_ingreso, salario_anual) values
('José', 'bastituta', 34, '1988/09/07', 'DNI', '409876546', '12409876546-0', 'San Acrosio 15781', '1157670000', '+5491157670000'
, 'joseBastituta_88@gmail.com', 'Vendedor(Marketing)', '10 meses', '2020/07/12', 65000),
('Juan', 'Contreras', 28, '1992/9/9', 'DNI', '37998637', '30-37998637-9', 'Av. Las Heras 7567', '1145367655', '-' 
, 'juanContreras.iptre@gmail.com', 'Programador Web', '4 meses' , '2018/4/2', 87000),
('Carlos', 'Gustamante', 31, '1982/04/03', 'DNI', '290076726', '11-290076726-2', 'Av. Figueroa Alcorta 22', '1145639987', '-'
, 'c.gustamante@gmail.com', 'Admin Bases de Datos', '1 año y medio', '2019/12/02', 100000);


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA CLIENTES ===========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'clientes';

select * from clientes;

insert into clientes (nombre, apellido, tipo_doc, nro_doc, nro_tel_princ
, nro_tel_sec, email) values
('Martin','Gutierrez','DNI','4598676890','+549116574839','-','martin.gutierrez@gmail.com'),
('Sofia','Aguilar','DNI','3494758583','+549116475834','-','sofi-aguilar-cordoba@hotmail.com'),
('Ramiro','Martinez','DNI','37849567333','-','-','ramiroMartinez3564@gmail.com');
-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA FACTURAS ===========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'facturas';

select * from facturas;

insert into facturas(numero, codigo, fecha, hora, importe_total) values
( '000056','ju01',current_date,current_time, 25000),
( '000057','Cam02',current_date,current_time, 90000),
( '000058','P01',current_date,current_time, 195000);


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ===========================================
-- ======= TABLA FACTURAS_DETALLES ===========
-- ===========================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'facturas_detalles';

select * from facturas_detalles;

insert into facturas_detalles(id_factura , tipo , descr_factura , costo_asoc , iva , medio_de_pago ,descr_pago) values
(1, 'B' , 'Consumidor Final' , 1000 , 19, 'EFECTIVO', 'Un Solo Pago'),
(2, 'B' , 'Consumidor Final' , 19000 , 19 , 'TARJETA CREDITO','Un solo Pago'),
(3, 'B' , 'Consumidor Final' ,  8000 ,19, 'TARJETA DEBITO','Un solo Pago');

-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA VENTAS ===========
-- ==================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'ventas';

select * from ventas;

insert into ventas(id_empleado, id_factura ) values 
(1,1),
(1,2),
(2,3);



-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==========================================
-- ======= TABLA VENTAS_PRODUCTOS ===========
-- ==========================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'ventas_productos';

select * from ventas_productos;

insert into ventas_productos(id_venta, id_producto, cantidad) values 
(1,1,4),
(1,2,5),
(1,3,5),
(2,2,2),
(2,3,4),
(2,5,5);


-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==========================================
-- ======= TABLA COMPRAS_CLIENTES ===========
-- ==========================================


select column_name, data_type, is_nullable from 
information_schema.columns where table_name = 'compras_clientes';

select * from compras_clientes;

insert into compras_clientes(id_venta,  id_cliente) values 
(1,1),
(2,2);


