/*lista de exercicios 3*/

/*exercicio 1*/
select orderDate as 'dataPedido',count(status) as 'quantPedido'
from orders
group by orderDate
having count(status) > 1;

/*exercicio 2*/
select jobTitle as cargo, count(jobTitle) as 'quantFuncionario'
from employees
group by jobTitle
having count(jobTitle) > 5;

/*exercicio 3*/
select count(firstName) as 'Quantidade de funcionários que nome começam com A ou B'
from employees
where firstName like "A%" or firstName like "B%";

/*exercicio 4*/
select country as pais,count(officeCode) as 'Quantidade de Excritórios por País'
from offices
group by country
having count(officeCode) > 2;

/*exercicio 5*/
select count(amount) as 'quantidade de pagamentos em 2003', format(avg(amount),2) as 'média de pagamentos em 2003'
from payments
where YEAR(paymentDate) = 2003;

/*exercicio 6*/
select productCode as 'código de produto',format(avg(quantityOrdered),2) as 'média quantidade pedida'
from orderdetails
where priceEach > 30
group by productCode;

/*exercicio 7*/
select *
from orderdetails
where quantityOrdered > (select avg(quantityOrdered) from orderdetails)
order by quantityOrdered asc;
