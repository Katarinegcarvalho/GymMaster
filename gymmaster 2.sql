create table aluno (
 AlunoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    CPF VARCHAR(20) UNIQUE NOT NULL,
    Telefone VARBINARY(20) NOT NULL,
    DataNascimento DATE NOT NULL,
    Sexo CHAR(1) NOT NULL,
    Endereco VARCHAR(100) NOT NULL,
    
    Email VARCHAR(100) UNIQUE NOT NULL,
    Objetivo VARCHAR(50) NOT NULL,
    NivelExperiencia VARCHAR(20) NOT NULL,
    FotoPerfil LONGBLOB 
);

describe aluno;

create table personal (
ProfissionalID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(50) NOT NULL,
    CPF VARCHAR(20) UNIQUE NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Telefone VARCHAR(20) NOT NULL,  
    Especializacao VARCHAR(50) NOT NULL,
    CREF VARCHAR(20) NOT NULL,
    ExperienciaProfissional VARCHAR(100) NOT NULL
);

describe personal;

create table exercicio (
 ExercicioID INT PRIMARY KEY AUTO_INCREMENT,
    NomeExercicio VARCHAR(50) NOT NULL,
    GrupoMuscular VARCHAR(50) NOT NULL,
    EquipamentoNecessario VARCHAR(50) NOT NULL,
    NivelDificuldade VARCHAR(20) NOT NULL
);

describe exercicio;

create table administrador (
  AdministradorID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Senha VARCHAR(200) NOT NULL,
    Telefone VARCHAR(15) NOT NULL,
    DataCadastro DATE NOT NULL,
    Status VARCHAR(20) NOT NULL,
    Permissoes VARCHAR(200) NOT NULL
);

describe administrador;

create table terino (
 TreinoID INT PRIMARY KEY AUTO_INCREMENT,
    AlunoID INT NOT NULL,
    ProfissionalID INT NOT NULL,
    Data DATE NOT NULL,
    Horario TIME NOT NULL,
    TipoTreino VARCHAR(50) NOT NULL,
    Observacoes VARCHAR(200) NOT NULL,
    Duracao INT NOT NULL
    );
    
    describe treino;

create table treino_exercicio (
 TreinoExercicioID INT PRIMARY KEY AUTO_INCREMENT,
    TreinoID INT NOT NULL,
    ExercicioID INT NOT NULL,
    Series INT NOT NULL,
    Repeticoes INT NOT NULL,
    CargaSugerida DECIMAL(5,2) NOT NULL
);

describe treino_exercicio;

create table plano_treino (
  Plano_TreinoID INT PRIMARY KEY AUTO_INCREMENT,
    AlunoID INT NOT NULL,
    NomePlano VARCHAR(50) NOT NULL,
    DataInicio DATE NOT NULL,
    DataTermino DATE NOT NULL,
    Observacoes VARCHAR(200) NOT NULL
);

describe plano_treino;

create table sessao_treino (
 SessaoID INT PRIMARY KEY AUTO_INCREMENT,
    AlunoID INT NOT NULL,
    ProfissionalID INT NOT NULL,
    Data DATE NOT NULL,
    Duracao INT NOT NULL,  -- minutos
    TipoTreino VARCHAR(100) NOT NULL,
    Exercicios VARCHAR(500) NOT NULL,
    Intensidade VARCHAR(50) NOT NULL,
    Observacoes VARCHAR(500) NOT NULL
);

describe plano_treino;

create table pagamento (
PagamentoID INT PRIMARY KEY AUTO_INCREMENT,
    AlunoID INT NOT NULL,
    ProfissionalID INT NOT NULL,
    DataPagamento DATE NOT NULL,
    Valor DECIMAL(10,2) NOT NULL,
    MetodoPagamento VARCHAR(50) NOT NULL,
    Status VARCHAR(20) NOT NULL,
    Observacoes VARCHAR(200) NOT NULL
);

describe pagamento;

create table avaliacao_fisica (
 AvaliacaoID INT PRIMARY KEY AUTO_INCREMENT,
    AlunoID INT NOT NULL,
    ProfissionalID INT NOT NULL,
    Data DATE NOT NULL,
    Peso DECIMAL(5,2) NOT NULL,  -- kg
    Altura DECIMAL(4,2) NOT NULL,  -- metros
    IMC DECIMAL(5,2) NOT NULL,  
    PercentualGordura DECIMAL(5,2) NOT NULL,  -- %
    MedidasCorporais VARCHAR(200) NOT NULL,
    ForcaMaxima VARCHAR(200) NOT NULL,
    CondicionamentoFisico VARCHAR(200) NOT NULL
);

describe avaliacao_fisica;

use gymmaster;
describe sessao_treino;
INSERT INTO SESSAO_TREINO (AlunoID, ProfissionalID, Data, Duracao, TipoTreino, Exercicios, Intensidade, Observacoes) VALUES
(1, 3, '2025-03-01', 60, 'Treino de Força', 'Supino reto, Agachamento livre, Levantamento terra', 'Alta', 'Ótimo desempenho no levantamento de peso'),
(2, 1, '2025-03-02', 45, 'Treino Funcional', 'Burpees, Prancha, Saltos laterais', 'Média', 'Foco no condicionamento cardiovascular'),
(3, 2, '2025-03-03', 50, 'Hipertrofia', 'Rosca direta, Tríceps pulley, Desenvolvimento com halteres', 'Alta', 'Aumento gradual de carga'),
(4, 3, '2025-03-04', 55, 'Treino Aeróbico', 'Corrida na esteira, Bike, Polichinelos', 'Média', 'Boa resistência, manter intensidade'),
(5, 1, '2025-03-05', 60, 'Treino de Pernas', 'Agachamento sumô, Afundo, Extensora', 'Alta', 'Melhorar amplitude no agachamento'),
(6, 2, '2025-03-06', 40, 'Mobilidade e Alongamento', 'Alongamento dinâmico, Mobilidade de quadril, Liberação miofascial', 'Baixa', 'Bom alongamento, sem dores'),
(7, 3, '2025-03-07', 50, 'Treino HIIT', 'Sprint na esteira, Saltos verticais, Mountain climber', 'Alta', 'Ótima resistência, manter intensidade'),
(8, 1, '2025-03-08', 55, 'Treino de Core', 'Prancha, Abdominal infra, Abdominal bicicleta', 'Média', 'Foco na respiração durante exercícios'),
(9, 2, '2025-03-09', 60, 'Treino de Peito e Ombro', 'Crucifixo, Desenvolvimento, Elevação lateral', 'Alta', 'Boa execução nos movimentos'),
(10, 3, '2025-03-10', 45, 'Treino de Resistência', 'Circuito com pesos, Remada aberta, Pular corda', 'Média', 'Bom controle da respiração'),
(11, 1, '2025-03-11', 50, 'Treino para Emagrecimento', 'Jump, Corrida, Agachamento com salto', 'Alta', 'Aluno motivado, grande queima calórica'),
(12, 2, '2025-03-12', 55, 'Treino de Costas e Bíceps', 'Remada curvada, Barra fixa, Rosca martelo', 'Alta', 'Bom desenvolvimento na barra fixa'),
(13, 3, '2025-03-13', 60, 'Treino de Pernas Avançado', 'Agachamento búlgaro, Stiff, Cadeira flexora', 'Alta', 'Ajustar postura no stiff'),
(14, 1, '2025-03-14', 40, 'Treino de Alongamento', 'Yoga, Alongamento estático, Mobilidade articular', 'Baixa', 'Ótima flexibilidade, sem queixas'),
(15, 2, '2025-03-15', 50, 'Treino de Glúteos', 'Abdução de quadril, Elevação pélvica, Agachamento sumô', 'Média', 'Aumentar a carga gradativamente'),
(16, 3, '2025-03-16', 60, 'Treino HIIT Avançado', 'Sprint, Burpees, Subida em banco', 'Alta', 'Aluno com ótimo desempenho'),
(17, 1, '2025-03-17', 45, 'Treino de Circuito', 'Jump, Remada, Flexão de braço', 'Média', 'Treino dinâmico e intenso'),
(18, 2, '2025-03-18', 55, 'Treino para Iniciantes', 'Esteira leve, Agachamento com peso corporal, Remada na máquina', 'Baixa', 'Aluno iniciando bem, manter progresso'),
(19, 3, '2025-03-19', 50, 'Treino de Membros Superiores', 'Supino reto, Remada, Desenvolvimento', 'Média', 'Melhorar controle excêntrico nos exercícios'),
(20, 1, '2025-03-20', 60, 'Treino de Alto Desempenho', 'Sprint, Levantamento olímpico, Kettlebell swing', 'Alta', 'Aluno preparado para desafios maiores');

select * from sessao_treino;

use gymmaster;
describe treino_exercicio;
INSERT INTO TREINO_EXERCICIO (TreinoID, ExercicioID, Series, Repeticoes, CargaSugerida) VALUES
(1, 5, 4, 12, 20.00),
(1, 8, 3, 10, 15.50),
(2, 3, 3, 15, 12.00),
(2, 7, 4, 8, 25.00),
(3, 1, 5, 6, 30.00),
(3, 6, 3, 12, 18.00),
(4, 4, 4, 10, 22.50),
(4, 2, 3, 15, 10.00),
(5, 9, 3, 8, 27.00),
(5, 10, 4, 12, 19.50),
(6, 11, 3, 15, 14.00),
(6, 12, 4, 10, 21.00),
(7, 13, 3, 8, 26.00),
(7, 14, 4, 12, 17.50),
(8, 15, 5, 6, 32.00),
(8, 16, 3, 15, 11.50),
(9, 17, 4, 10, 20.00),
(9, 18, 3, 12, 22.50),
(10, 19, 4, 8, 28.00),
(10, 20, 3, 12, 24.00);

select * from treino_exercicio;

use gymmaster;
describe aluno;
select * from aluno;
update aluno
set nivelexperiencia = ';


UPDATE aluno
SET Objetivo = 'Resistência'
WHERE AlunoID = 42;
