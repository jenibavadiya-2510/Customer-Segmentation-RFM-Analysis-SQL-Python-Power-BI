-- check 1 - missing customer id
select count(*) as Missing_CustomerID from dbo.RetailCombined where Customer_ID is null;

-- check 2 - NEGATIVE OR ZERO QUANTITY
select count(*) as Negative_Qty from dbo.RetailCombined where Quantity <= 0;

-- check 3 - Missing Description 
select count(*) as Missing_Description from dbo.RetailCombined where Description is null;

-- check 4 - exact duplicate rows
select Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country, count(*) as 
ExactDupeCount from dbo.RetailCombined
group by Invoice, StockCode, Description, Quantity, InvoiceDate, Price, Customer_ID, Country
having count(*) > 1;
