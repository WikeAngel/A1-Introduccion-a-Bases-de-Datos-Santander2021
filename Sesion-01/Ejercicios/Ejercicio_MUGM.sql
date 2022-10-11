SHOW DATABASES;


SHOW DATABASES; -- MOstrar que bases de datos existen
use classicmodels; -- Identificar que base se va a utilizar
show tables; -- Mostrar las tablas que tiene una base de datos
describe employees; -- Describir los campos de una tabla

/**||||||||RETO UNO **/

USE tienda;
SHOW tables;
DESCRIBE venta; -- Es una tabla que obtiene la informacion de ventas versus empleado
DESCRIBE articulo ;

select v.id_venta, v.id_articulo, a.nombre articulo, a.precio, a.iva, a.cantidad 
,e.id_empleado, e.nombre, p.id_puesto, p.nombre Puesto, p.salario
from venta v 
inner join articulo a ON a.id_articulo = v.id_articulo 
inner join empleado e on e.id_empleado = v.id_empleado 
inner join puesto p on p.id_puesto = e.id_puesto 
where 1 = 1
and p.id_puesto BETWEEN  100 and 200
order by p.id_puesto ;
/*,e.id_empleado */


select * from empleado e where e.id_puesto = 4;
select * from puesto p where p.salario > 10000
order by p.salario ;
select * from articulo a where a.precio > 1000 and a.iva > 100
order by a.precio, a.iva limit 20
;
select * from venta v where v.id_articulo in (135, 963) and v.id_empleado in (835,369);

select nombre, salario from puesto order by salario desc limit 5;
