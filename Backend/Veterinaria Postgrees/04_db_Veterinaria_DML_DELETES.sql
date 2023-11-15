/* ----------------------------
 * ------ VETERINARIA ENTREPATAS---------
 * ----------------------------
 * 
 * 
 * ========= DML DELETES =============
 */

-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA PROVEEDORES ========
-- ==================================

select * from proveedores;

delete from proveedores where id = 5;


insert into proveedores(empresa, tipo_producto, direccion, nro_tel_princ, nro_tel_sec, email)values
('Camas' , 'Concentrado' , '-' , '-', '-', '-');

update proveedores set 
direccion='Carrera 53F #2-89'
, nro_tel_princ ='3107187229'
,email='camisetas@gmail.com'
where id = 9;

select * from proveedores;

-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA PRODUCTOS ========
-- ==================================

select * from productos;

--Eliminamos el Producto de la marca huesos y cuyo grupo sea Juguete
delete from productos where ((marca ='Huesos')and (grupo = 'Juguetes'));

--JUGUETES
insert into productos(id_proveedor,codigo, imagen, nombre, marca, tipo, grupo, peso, precio_unidad, stock) values
(8,'JU08', 'https://elchiquitindelospreciosbajos.com/wp-content/uploads/2022/09/Juguete-para-Perro_2_REF_HZX84.png' ,'Juguete hueso', 'Hueso' ,'Juguetes', 'Mascotas' , 1.00 , 25000 , 50 );

select * from productos;

-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA EMPLEADOS ========
-- ==================================

select * from empleados;


--Eliminamos el empleado cuyo nro_doc sea 39345679
delete from empleados where nro_doc = '39345679';


select * from empleados;

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ==================================
-- ======= TABLA CLIENTES ========
-- ==================================

select * from clientes;

--Eliminamos un empleado por su nombre y nro de doc
delete from clientes where (nombre='Andrea' and nro_doc='1030556789');


insert into clientes (nombre, apellido, tipo_doc, nro_doc, nro_tel_princ
, nro_tel_sec, email) values
('Andrea','Ruiz','Cedula','1030556789','6014567898','-','andreruizam@hotmail.com');

-- ---------------------------------------------------------------------------

-- ---------------------------------------------------------------------------

-- ===============================
-- ======= TABLA FACTURAS ========
-- ===============================

select * from facturas;



--Eliminamos una factura por su numero
delete from facturas where (numero='000056');


insert into facturas(numero, codigo, fecha, hora, importe_total) values
('000058','JU01',current_date,current_time, 80000);

-- ---------------------------------------------------------------------------
-- ---------------------------------------------------------------------------

-- ========================================
-- ======= TABLA FACTURAS_DETALLES ========
-- ========================================

select * from facturas_detalles;

--Eliminamos el detalle de factura por su id de factura
delete from facturas_detalles where (id_factura=2);

select * from facturas;

insert into facturas_detalles(id_factura , tipo , descr_factura , costo_asoc , iva , medio_de_pago ,descr_pago) values
(2, 'B' , 'Consumidor Final' , 86 , 19 , 'TARJETA CREDITO','Un solo Pago');


select * from facturas_detalles;

