-- Tabla: Miguel Rivas --
DROP TABLE IF EXISTS pelicula;

CREATE TABLE pelicula (
    pelicula_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    genero VARCHAR(100),
    duracion INT UNSIGNED,
    clasificacion_edad VARCHAR(10)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;