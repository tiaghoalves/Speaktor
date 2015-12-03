-- Permissao
INSERT INTO Permissao (IDPermissao, Permissao) VALUES (0, 'ADMINISTRADOR');
INSERT INTO Permissao (IDPermissao, Permissao) VALUES (1, 'COLABORADOR');

-- Tipo de Evento
INSERT INTO TipoEvento (IDTipoEvento, TipoEvento) VALUES (0, 'PALESTRA');
INSERT INTO TipoEvento (IDTipoEvento, TipoEvento) VALUES (1, 'DOJO');
INSERT INTO TipoEvento (IDTipoEvento, TipoEvento) VALUES (2, 'TALK');

-- Situação Usuario
INSERT INTO SituacaoUsuario (IDSituacao, Situacao) VALUES (0, 'ATIVO');
INSERT INTO SituacaoUsuario (IDSituacao, Situacao) VALUES (1, 'INATIVO');
INSERT INTO SituacaoUsuario (IDSituacao, Situacao) VALUES (2, 'PENDENTE');

-- Situação Evento
INSERT INTO SituacaoEvento (IDSituacao, Situacao) VALUES (0, 'ATIVO');
INSERT INTO SituacaoEvento (IDSituacao, Situacao) VALUES (1, 'ENCERRADO');
INSERT INTO SituacaoEvento (IDSituacao, Situacao) VALUES (2, 'CANCELADO');

-- Usuario
INSERT INTO Usuario (IDUsuario, Nome, Email, Senha, IDPermissao, Situacao)
	VALUES (SEQ_Usuario.nextval(), 'admin', 'admin@cwi.com.br', 'admin', 0, 0);
INSERT INTO Usuario (IDUsuario, Nome, Email, Senha, IDPermissao, Situacao)
	VALUES (SEQ_Usuario.nextval(), 'colaborador', 'colaborador@cwi.com.br', 'colaborador', 1, 0);


