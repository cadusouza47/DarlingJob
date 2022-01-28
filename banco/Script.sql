-- CREATE SCHEMA mydb ;
-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Endereco (
  [idEndereco] INT NOT NULL,
  [endereco] VARCHAR(45) NULL,
  [complemento] VARCHAR(45) NULL,
  [numero] VARCHAR(45) NULL,
  [bairro] VARCHAR(45) NULL,
  [pais] VARCHAR(45) NULL,
  [estado] VARCHAR(45) NULL,
  [cidade] VARCHAR(45) NULL,
  PRIMARY KEY ([idEndereco]));

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Usuario (
  [id] INT NOT NULL,
  [nome] VARCHAR(45) NOT NULL,
  [cpf] CHAR(11) NOT NULL,
  [rg] CHAR(9) NOT NULL,
  [sexo] CHAR(1) NOT NULL,
  [dataNasc] DATE NOT NULL,
  [telefone] INT NOT NULL,
  [celular] INT NOT NULL,
  [email] VARCHAR(45) NOT NULL,
  [cep] CHAR(8) NOT NULL,
  [senha] VARCHAR(45) NOT NULL,
  [classificacao] VARCHAR NOT NULL,
  [isContratada] SMALLINT NOT NULL,
  [servicoContratada] VARCHAR(45) NULL,
  [diasSemanaContratada] VARCHAR(45) NULL,
  [horarioInicioContratada] VARCHAR(45) NULL,
  [horarioFeriadoFimContratada] VARCHAR(45) NULL,
  [horarioFeriadoInicioContratada] VARCHAR(45) NULL,
  [fkCartao] INT NOT NULL,
  [fkEndereco] INT NOT NULL,
  PRIMARY KEY ([id]),
  FOREIGN KEY ([fkEndereco]) REFERENCES Endereco ([idEndereco]));

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Contrato (
  [idContratada] INT NOT NULL,
  [idContratante] INT NOT NULL,
  [categoria] VARCHAR(45) NULL,
  [descricao] VARCHAR(45) NULL,
  [dataServico] DATE NULL,
  [horaServico] VARCHAR(45) NULL,
  [valorServico] DECIMAL(6,2) NULL,
  PRIMARY KEY ([idContratada], [idContratante]),
    FOREIGN KEY ([idContratada]) REFERENCES Usuario ([id]),
    FOREIGN KEY ([idContratante]) REFERENCES Usuario ([id]));

-- SQLINES LICENSE FOR EVALUATION USE ONLY
CREATE TABLE Financeiro (
  [idFinanceiro] INT NOT NULL,
  [descricaoFinanceiro] VARCHAR(45) NULL,
  [totalTrabalhos] INT NULL,
  [valorDia] DECIMAL(6,2) NULL,
  [fkUsuario] INT NOT NULL,
  PRIMARY KEY ([idFinanceiro]),
  FOREIGN KEY ([fkUsuario]) REFERENCES Usuario ([id]));
