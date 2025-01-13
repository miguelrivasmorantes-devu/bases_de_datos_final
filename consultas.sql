DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_miguel_rivas` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_miguel_rivas`()
BEGIN

-- Consultas --
-- Interseccion --
SELECT titulo, genero, clasificacion_edad
FROM pelicula
WHERE genero = 'Ciencia Ficción'

INTERSECT

SELECT titulo, genero, clasificacion_edad
FROM pelicula
WHERE duracion > 145;

-- Union --
SELECT titulo, genero, clasificacion_edad
FROM pelicula
WHERE genero = 'Ciencia Ficción'

UNION

SELECT titulo, genero, clasificacion_edad
FROM pelicula
WHERE genero = 'Romance';

-- Diferencia --
SELECT titulo, genero, clasificacion_edad
FROM pelicula
WHERE clasificacion_edad = 'PG-13'

EXCEPT

SELECT titulo, genero, clasificacion_edad
FROM pelicula
WHERE genero = 'Ciencia Ficción';


-- Agregacion --
SELECT genero, 
       COUNT(*) AS cantidad_peliculas, 
       AVG(duracion) AS duracion_promedio
FROM pelicula
GROUP BY genero;

-- Reunion Natural --
SELECT * FROM pelicula NATURAL JOIN funcion;

-- Reunion Natural por derecha --
SELECT * FROM pelicula RIGHT JOIN funcion
ON pelicula.pelicula_id = funcion.pelicula_id;

-- Reunion Natural por izquierda --
SELECT * FROM pelicula LEFT JOIN funcion
ON pelicula.pelicula_id = funcion.pelicula_id;

-- Producto cartesiano --
SELECT * FROM pelicula CROSS JOIN funcion;

END //

DELIMITER ;
