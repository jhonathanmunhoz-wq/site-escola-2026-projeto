CREATE DATABASE site_escola;
USE site_escola;

-- Tabela de Usuários Administrativos
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    senha VARCHAR(255) NOT NULL, -- Guardar sempre com hash (ex: bcrypt)
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Notícias
CREATE TABLE noticias (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(200) NOT NULL,
    conteudo TEXT NOT NULL,
    imagem_url VARCHAR(255),
    data_publicacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);

-- Tabela de Eventos
CREATE TABLE eventos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(150) NOT NULL,
    descricao TEXT,
    data_evento DATE NOT NULL,
    local VARCHAR(100),
    usuario_id INT,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id)
);