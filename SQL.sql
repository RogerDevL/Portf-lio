CREATE DATABASE portfolio;

USE portfolio;

CREATE TABLE Alunos(
	id_aluno INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(30),
    cpf VARCHAR(11),
    data_nascimento DATE,
    email VARCHAR(30),
    telefone VARCHAR(11)
);


CREATE TABLE Cursos (
    id_cursos INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    duracao INT
);

CREATE TABLE Materias (
    id_materia INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    carga INT
);

CREATE TABLE Turmas (
    id_turma INT PRIMARY KEY AUTO_INCREMENT,
    semestre INT,
    id_cursos INT,
    FOREIGN KEY (id_cursos) REFERENCES Cursos(id_cursos)
);

CREATE TABLE Professores (
    id_professor INT PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100),
    cpf VARCHAR(11) UNIQUE,
    especializacao VARCHAR(100)
);

CREATE TABLE Notas (
    id_nota INT PRIMARY KEY AUTO_INCREMENT,
    id_aluno INT,
    id_materia INT,
    nota INT,
    FOREIGN KEY (id_aluno) REFERENCES Alunos(id_aluno),
    FOREIGN KEY (id_materia) REFERENCES Materias(id_materia)
);

INSERT INTO Alunos (nome, cpf, data_nascimento, email, telefone) VALUES
("Roger", "342342", "2024-08-05", "rogeralves@gmail,com", "11331313");

INSERT INTO Cursos(nome, duracao)VALUES
("ADS", 5);

INSERT INTO Materias(nome, carga)VALUES
("database", 120);

INSERT INTO Turmas(semestre, id_cursos)VALUES
(1,1);

INSERT INTO Professores(nome,cpf,especializacao)VALUES
("Samuel","434242", "ADS");

INSERT INTO Notas(id_aluno, id_materia, nota)VALUES
(1,1,10);


SELECT * FROM Notas;



