CREATE DATABASE  Db_tarefas;

USE db_tarefas;

CREATE TABLE usuarios (
   Codigo INT AUTO_INCREMENT PRIMARY KEY,
   nome VARCHAR (100) NOT NULL,
   email VARCHAR (100) NOT NULL UNIQUE
);

CREATE TABLE tarefas (
   Codigo INT AUTO_INCREMENT PRIMARY KEY,
   setor VARCHAR (100) NOT NULL,
   prioridade ENUM ('Baixa', 'média', 'alta') NOT NULL,
   descrição TEXT NOT NULL,
   status ENUM ('Em andamento', 'Pendente', 'Concluída') NOT NULL,
   usuario_codigo INT,
   FOREIGN KEY (usuario_codigo)
   REFERENCES usuarios(codigo)
);

INSERT INTO usuarios (nome, email) 
VALUES ('Bruna','Bruna9@gmail.com'),
('Ana luiza','Analuiza94@gmail.com'),
('kaua','kauadias12@gmail.com');

INSERT INTO tarefas (setor,prioridade,descrição,status,usuario_codigo)
VALUES
('TI', 'Baixa','Configuração de servidores','Em andamento', '1'),
('tecnologia', 'média', 'resolução de pronlemas','Pendente', '2'),
('desenvolvimento', 'alta', 'aplicativos e sistema ','concluída', '3');
 

