-- Usuário
CREATE SEQUENCE SEQ_Usuario START WITH 1 INCREMENT BY 1;

CREATE TABLE Usuario (
  IDUsuario INTEGER NOT NULL,
  Nome VARCHAR2(150) NOT NULL,
  Email VARCHAR2(250) NOT NULL,
  Senha VARCHAR2(64) NOT NULL,
  FotoPerfil VARCHAR2(2000),
  IDPermissao VARCHAR2(1),
  Situacao VARCHAR2(1) NOT NULL,
  CONSTRAINT PK_Usuario PRIMARY KEY (IDUsuario),
  CONSTRAINT UK_Usuario_Email UNIQUE (Email),
  CONSTRAINT FK_Usuario_Permissao FOREIGN KEY (IDPermissao) REFERENCES Permissao (IDPermissao)
);


-- Evento
CREATE SEQUENCE SEQ_Evento START WITH 1 INCREMENT BY 1;

CREATE TABLE Evento (
  IDEvento INTEGER NOT NULL,
  IDUsuario INTEGER NOT NULL, -- Usuário criador do Evento
  Titulo VARCHAR2(100) NOT NULL,
  Descrição VARCHAR2 NOT NULL,
  TipoEvento VARCHAR2(1) NOT NULL,
  LocalEvento VARCHAR2(500) NOT NULL,
  Valor NUMBER(12,2) NOT NULL,
  DataInicio DATE NOT NULL,
  DataFim DATE NOT NULL,
  DataCriacao DATE NOT NULL,
  DataAtualizacao DATE,
  Visualizacoes INTEGER,
  MaterialApoio VARCHAR2(2000),
  DataUpload DATE,
  Situacao VARCHAR2(1) NOT NULL,
  CONSTRAINT PK_Evento PRIMARY KEY (IDEvento),
  CONSTRAINT FK_Evento_Usuario FOREIGN KEY (IDUsuario) REFERENCES Usuario (IDUsuario)
);


-- Participantes
CREATE TABLE Participante (
  IDEvento INTEGER NOT NULL,
  IDUsuario INTEGER NOT NULL,
  CONSTRAINT PK_Participante PRIMARY KEY (IDEvento, IDUsuario),
  CONSTRAINT FK_Participante_Evento FOREIGN KEY (IDEvento) REFERENCES Evento (IDEvento),
  CONSTRAINT FK_Participante_Usuario FOREIGN KEY (IDUsuario) REFERENCES Produto(IDUsuario)
);


-- Permissão
CREATE TABLE Permissao (
  IDPermissao INTEGER NOT NULL,
  Permissao VARCHAR2(20) NOT NULL,
  CONSTRAINT PK_Permissao PRIMARY KEY (IDPermissao)
);


-- Tipo de Evento
CREATE TABLE TipoEvento (
  IDTipoEvento INTEGER NOT NULL,
  TipoEvento VARCHAR2(30) NOT NULL,
  CONSTRAINT PK_TipoEvento PRIMARY KEY (IDTipoEvento)
);


-- Situação Usuário
CREATE TABLE SituacaoUsuario (
  IDSituacao INTEGER NOT NULL,
  Situacao VARCHAR2(20) NOT NULL,
  CONSTRAINT PK_SituacaoUsuario PRIMARY KEY (IDSituacao)
);


-- Situação Evento
CREATE TABLE SituacaoEvento (
  IDSituacao INTEGER NOT NULL,
  Situacao VARCHAR2(20) NOT NULL,
  CONSTRAINT PK_SituacaoEvento PRIMARY KEY (IDSituacao)
);


-- Tags
CREATE TABLE TagEvento (
  IDTag INTEGER NOT NULL,
  NomeTag VARCHAR2(30) NOT NULL,
  CONSTRAINT PK_SituacaoEvento PRIMARY KEY (IDSituacao)
);

/*
DROP TABLE TagEvento;
DROP TABLE SituacaoEvento;
DROP TABLE SituacaoUsuario;
DROP TABLE TipoEvento;
DROP TABLE Permissao;
DROP TABLE Participante;
DROP TABLE Evento;
DROP SEQUENCE SEQ_Evento;
DROP TABLE Usuario;
DROP SEQUENCE SEQ_Usuario;
*/