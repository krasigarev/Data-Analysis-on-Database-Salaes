select
	c.FirstName,
	c.LastName,
	s.Quantity,
	p.Price,
	SUM(p.price) as [total sum],
	COUNT(s.SalesID) as [count orders]
from dbo.Sales as s
left join dbo.Products as p on s.ProductID = p.ProductID 
left join dbo.Customers as c on c.CustomerID = s.CustomerID
where s.Quantity between 201 and 699
group by c.FirstName, c.LastName, s.Quantity, p.Price
order by [count orders] desc;
