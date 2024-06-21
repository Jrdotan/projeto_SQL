/* LocadoraLOG: */

CREATE TABLE Loja (
    ID INTEGER PRIMARY KEY,
    gerente VARCHAR,
    fk_Cliente_ID INTEGER,
    fk_Funcionario_ID INTEGER
);

CREATE TABLE Item (
    ID INTEGER PRIMARY KEY
);

CREATE TABLE Categoria (
    ID INTEGER PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Cliente (
    ID INTEGER PRIMARY KEY,
    nome VARCHAR,
    cpf INTEGER,
    email VARCHAR,
    ativo BOOLEAN,
    fk_Aluguel_ID INTEGER,
    fk_Pagamento_ID INTEGER
);

CREATE TABLE Funcionario (
    ID INTEGER PRIMARY KEY,
    nome VARCHAR,
    foto VARCHAR,
    email VARCHAR,
    ativo BOOLEAN,
    login VARCHAR,
    senha VARCHAR,
    fk_Aluguel_ID INTEGER,
    fk_Pagamento_ID INTEGER,
    fk_gerente VARCHAR
);

CREATE TABLE Filme (
    ID INTEGER PRIMARY KEY,
    titulo VARCHAR,
    descricao VARCHAR,
    ano INTEGER,
    aluguel_duracao DATE,
    duracao TIME,
    valor_reposicao FLOAT,
    classificacao INTEGER,
    aluguel_taxa FLOAT,
    caracteristicas VARCHAR,
    fk_Item_ID INTEGER
);

CREATE TABLE Aluguel (
    ID INTEGER PRIMARY KEY,
    data DATE,
    data_devolucao DATE,
    fk_Pagamento_ID INTEGER,
    fk_Item_ID INTEGER
);

CREATE TABLE Pagamento (
    ID INTEGER PRIMARY KEY,
    valor FLOAT,
    data_pagamento DATE
);

CREATE TABLE Ator (
    ID INTEGER PRIMARY KEY,
    nome VARCHAR
);

CREATE TABLE Possui (
    fk_Filme_ID INTEGER,
    fk_Categoria_ID INTEGER
);

CREATE TABLE Possui (
    fk_Filme_ID INTEGER,
    fk_Ator_ID INTEGER
);
 
ALTER TABLE Loja ADD CONSTRAINT FK_Loja_2
    FOREIGN KEY (fk_Cliente_ID)
    REFERENCES Cliente (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Loja ADD CONSTRAINT FK_Loja_3
    FOREIGN KEY (fk_Funcionario_ID)
    REFERENCES Funcionario (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_2
    FOREIGN KEY (fk_Aluguel_ID)
    REFERENCES Aluguel (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Cliente ADD CONSTRAINT FK_Cliente_3
    FOREIGN KEY (fk_Pagamento_ID)
    REFERENCES Pagamento (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_2
    FOREIGN KEY (fk_Aluguel_ID)
    REFERENCES Aluguel (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_3
    FOREIGN KEY (fk_Pagamento_ID)
    REFERENCES Pagamento (ID)
    ON DELETE CASCADE;
 
ALTER TABLE Funcionario ADD CONSTRAINT FK_Funcionario_4
    FOREIGN KEY (fk_gerente???)
    REFERENCES ??? (???);
 
ALTER TABLE Filme ADD CONSTRAINT FK_Filme_2
    FOREIGN KEY (fk_Item_ID)
    REFERENCES Item (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Aluguel ADD CONSTRAINT FK_Aluguel_2
    FOREIGN KEY (fk_Pagamento_ID)
    REFERENCES Pagamento (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Aluguel ADD CONSTRAINT FK_Aluguel_3
    FOREIGN KEY (fk_Item_ID)
    REFERENCES Item (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_1
    FOREIGN KEY (fk_Filme_ID)
    REFERENCES Filme (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_2
    FOREIGN KEY (fk_Categoria_ID)
    REFERENCES Categoria (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_1
    FOREIGN KEY (fk_Filme_ID)
    REFERENCES Filme (ID)
    ON DELETE RESTRICT;
 
ALTER TABLE Possui ADD CONSTRAINT FK_Possui_2
    FOREIGN KEY (fk_Ator_ID)
    REFERENCES Ator (ID)
    ON DELETE RESTRICT;