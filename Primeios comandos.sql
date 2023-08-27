-- selecionando todas as linhas e colunas databela 
select * FROM Pedidos; 

-- seleciona e apresenta colunas com nomes abreviados
select ID_Pedido as ID_P, Data_Venda as D_V from Pedidos;

-- renomeia colunas e limita por ordem (comando "as" e "limit")
select Gerente as "Ger", Loja as "Lj" from lojas limit 3; 

-- ordenando do maior para o mennor e vice-verca (comando "order by")
select * from Pedidos order by Preco_Unit;


-- criando filtros (COMANDO WHERE)
select * from clientes where Qtd_Filhos >=2 order by Qtd_Filhos desc; -- Filtra a coluna de custo para maior ou igual a 500

-- filtra a data de nascimento dos clientes de antes de dois de maio de 2000  e homens
select * from clientes where Data_Nascimento <= '2000/02/05' and sexo = 'M'; 

-- seleciona o nome dos clientes do gênero masculino
select nome from clientes where sexo = 'M';

-- criação de uma nova tabela chamada "info"
create table info(informacao varchar(50), id_informacao varchar(50));

-- inserindo informações na tabela
insert into info(informacao, id_informacao) 
values('bla_bla', 'bli_bli');

 -- seleciona as linhas onde a marca do produto seja dell ou samsung
select * from produtos where Marca_Produto = SAMSUNG or Marca_Produto = DELL;  

-- soma a coluna dos precos
select * from produtos; select sum(Preco_Unit) as "preço" from pedidos;  
 
-- conta quantos produtos samsung tem na lista
select count(Nome_Produto) from produtos where Marca_Produto = 'SAMSUNG';

-- avg(media) do preço por unidade
select avg(Preco_Unit) from produtos;

-- seleciona o min/max
select min(Custo_Unit) as 'nenor cuso' from produtos;

select max(Custo_Unit) as 'maior cuso' from produtos;


select Marca_Produto, count(Marca_Produto) as 'quantidade de produto' from produtos group by Marca_Produto;

-- Realiza uma contagem de quantos clientes são homens ou mulheres.
select Sexo, count(Sexo) as 'sexo' 
from clientes 
group by Sexo;

select ID_Loja, sum(Receita_Venda) as 'receita' from pedidos group by ID_Loja order by ID_Loja asc;

-- concatena duas colunas de tabelas distintas através de uma coluna em comum
select Nome, Data_Venda, Data_Nascimento
from pedidos
inner join clientes on pedidos.ID_cliente = clientes.ID_Cliente



