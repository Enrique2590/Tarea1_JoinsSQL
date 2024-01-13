la base de datos dvdrental en PostgreSQL correspondiente a la base de un negocio de rentas de peliculas para el cual se comparten las siguientes consultas:

1. Se creo un JOIN que lista las películas cuyo costo de reemplazo sea menor que cuatro veces la tarifa de alquiler.
2. se creo un JOIN que lista las películas que fueron lanzadas en el año 2006, que se alquilan a $0.99 o $2.99, que tienen un costo de reemplazo inferior a $19.99, que tienen una duración de entre 90 y 150 minutos, que tienen clasificación ‘G’, ‘PG’ o ‘PG-13’, que se rentan por 5 días o menos y que sean de alguna de las categorías ‘Comedy’, ‘Family’ o ‘Children’.
3. Escriba un query que genere este reporte para una fecha fija, por ejemplo el 31 de julio de 2005. El reporte debe mostrar las rentas de esa fecha en orden cronológico. El reporte debe incluir las siguientes columnas:
  a) “Fecha de Renta”, en este formato, como ejemplo: 31-JUL-2005
  b) “Hora de Renta”, en este formato, como ejemplo: 15:30 (formato de 24 horas, sin am/pm)
  c) “Título” (de la película)
  d) “Nombre del Cliente” (Primer nombre seguido del apellido)
  e) “Email del Cliente”
  f) “Teléfono del Cliente”
  g) “Dirección Completa del Cliente”, en este formato: Dirección Base. Distrito, Código Postal. Ciudad, País.
  h) “Nombre del Empleado” (Primer nombre seguido de apellido)
4. Se creo un JOIN de un reporte que muestra las rentas del día: Fecha y hora de renta, datos del cliente (nombre completo, teléfono y país de residencia); y datos del empleado que registra la renta (nombre completo, teléfono y país de residencia).
5. Se piensa que hay un problema con la congruencia de los datos entre la tarifa de renta de cada película y el monto pagado realmente por rentarla. para el cual se Escribio un query que muestra todas las rentas efectuadas en agosto de 2005 en las que la tarifa de renta de la película (según la tabla film) NO coincida con el monto pagado realmente.
