
-- 1 numero totale Ordini

SELECT
count (*) as [Totale ordini]

FROM
Orders 

-- 2 numero totale Clienti
SELECT 
count (*) as [Totale clienti]
From 
Customers

--3 numero totale clienti di londra

SELECT
count(*) as [Clienti di Londra]
From
Customers
where City = 'London'

--4 media aritmetica del costo del trasposto di tutti gli ordini effettuati

SELECT 
AVG(Freight) as [Media costo trasposto]
From 
Orders

--5 media aritmetica dei soli ordini effettuati dal cliente "BOTTM"
SELECT 
AVG (Freight) as [Media ordini del cliente BOTTM]
From
Orders
where CustomerID = 'BOTTM'

-- 6 totale delle spese di trasposto raggruppate per id Cliente

SELECT
CustomerID ,
SUM (Freight)  as [spese trasporto per cliente]
From
Orders
Group by CustomerID

-- 7 numero totale di clienti raggruppati per città d'appartenenza
SELECT City, count(CustomerID) as [ numero clienti ]

FROM
Customers
Group by City

-- 8  Totale di UnitPrice * Quantity raggruppato per ogni ordine

SELECT OrderId, SUM(UnitPrice*Quantity) As [Totale della moltiplicazione tra unitPrice e Quantity]
From [Order Details]
Group by OrderID 

-- 9 Totale di UnitPrice * Quantity solo dell'ordine con id=10248

SELECT 
OrderID, SUM (UnitPrice*Quantity) as [Totale dell'ordine di id 10248]

FROM [Order Details]
 Group by OrderID 
Having OrderID=10248

-- 10  Numero di prodotti censiti per ogni categoria

SELECT 
count(*) as [prodotti trovati], CategoryID 
FROM
Products
Group by CategoryID

-- 11 Numero totale di ordini raggruppati per paese di spedizione (ShipCountry)

SELECT
count (*) as [ordini], ShipCountry

FROM
Orders
Group by 
ShipCountry

-- 12 La media del costo del trasporto raggruppati per paese di spedizione (ShipCountry)

SELECT 
AVG (Freight) as [ media costo spedizione], ShipCountry
FROM
Orders
Group by ShipCountry
