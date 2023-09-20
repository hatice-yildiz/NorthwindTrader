select ct.customerID,o.orderID,orderDate,requiredDate,shippedDate,freight,ct.companyName  customerCompanyName, contactName, contactTitle, ct.city customerCity,ct.country customerCountry,
od.unitPrice orderdetailUnitPrice, 
quantity,discount,employeeName,title employeeTitle,e.city employeeCity,e.country employeeCountry,reportsTo, productName,quantityPerUnit,
p.unitPrice productUnitPrice,discontinued,s.companyName shipperCompanyName, categoryName, description 
from orders o
join customer_trades ct on ct.customerID = o.customerID
join order_details od on od.orderID= o.orderID
join employees e on e.employeeID= o.employeeID
join products p on p.productID = od.productID
join shippers s on s.shipperID=o.shipperID
join categories c on c.categoryID=p.categoryID


