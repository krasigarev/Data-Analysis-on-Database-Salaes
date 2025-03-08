-- total sum by product 'Hex Nut 16'

select 
	p.[Name],
	SUM(s.Quantity) as [total]
from dbo.Products as p
left join dbo.Sales as s on p.ProductID = s.ProductID
where p.Name = 'Hex Nut 16'
group by p.[Name]
