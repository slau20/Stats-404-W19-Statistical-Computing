select distinct(strftime('%Y', invoices.InvoiceDate)) as year
	from invoices;

WITH TrackQuantity (Year , track , name , quantity)
AS (select distinct(strftime('%Y', invoices.InvoiceDate)) as year,tracks.TrackId, artists.Name, invoice_items.quantity
	FROM albums 
	JOIN artists ON albums.Artistid = artists.Artistid
	JOIN tracks ON albums.AlbumId = tracks.AlbumId
	JOIN invoice_items ON tracks.TrackId = invoice_items.TrackID
	JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
	JOIN customers ON invoices.CustomerId = customers.CustomerId
	WHERE customers.STATE = 'CA')
SELECT TrackQuantity.name, count(*) as n, Year
FROM TrackQuantity
Where TrackQuantity.Year = '2009'
group by name
order by 2 desc
limit 3
;

WITH TrackQuantity (Year , track , name , quantity)
AS (select distinct(strftime('%Y', invoices.InvoiceDate)) as year,tracks.TrackId, artists.Name, invoice_items.quantity
	FROM albums 
	JOIN artists ON albums.Artistid = artists.Artistid
	JOIN tracks ON albums.AlbumId = tracks.AlbumId
	JOIN invoice_items ON tracks.TrackId = invoice_items.TrackID
	JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
	JOIN customers ON invoices.CustomerId = customers.CustomerId
	WHERE customers.STATE = 'CA')
SELECT TrackQuantity.name, count(*) as n, Year
FROM TrackQuantity
Where TrackQuantity.Year = '2010'
group by name
order by 2 desc
limit 3
;

WITH TrackQuantity (Year , track , name , quantity)
AS (select distinct(strftime('%Y', invoices.InvoiceDate)) as year,tracks.TrackId, artists.Name, invoice_items.quantity
	FROM albums 
	JOIN artists ON albums.Artistid = artists.Artistid
	JOIN tracks ON albums.AlbumId = tracks.AlbumId
	JOIN invoice_items ON tracks.TrackId = invoice_items.TrackID
	JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
	JOIN customers ON invoices.CustomerId = customers.CustomerId
	WHERE customers.STATE = 'CA')
SELECT TrackQuantity.name, count(*) as n, Year
FROM TrackQuantity
Where TrackQuantity.Year = '2011'
group by name
order by 2 desc
limit 3
;


WITH TrackQuantity (Year , track , name , quantity)
AS (select distinct(strftime('%Y', invoices.InvoiceDate)) as year,tracks.TrackId, artists.Name, invoice_items.quantity
	FROM albums 
	JOIN artists ON albums.Artistid = artists.Artistid
	JOIN tracks ON albums.AlbumId = tracks.AlbumId
	JOIN invoice_items ON tracks.TrackId = invoice_items.TrackID
	JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
	JOIN customers ON invoices.CustomerId = customers.CustomerId
	WHERE customers.STATE = 'CA')
SELECT TrackQuantity.name, count(*) as n, Year
FROM TrackQuantity
Where TrackQuantity.Year = '2012'
group by name
order by 2 desc
limit 3
;


WITH TrackQuantity (Year , track , name , quantity)
AS (select distinct(strftime('%Y', invoices.InvoiceDate)) as year,tracks.TrackId, artists.Name, invoice_items.quantity
	FROM albums 
	JOIN artists ON albums.Artistid = artists.Artistid
	JOIN tracks ON albums.AlbumId = tracks.AlbumId
	JOIN invoice_items ON tracks.TrackId = invoice_items.TrackID
	JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
	JOIN customers ON invoices.CustomerId = customers.CustomerId
	WHERE customers.STATE = 'CA')
SELECT TrackQuantity.name, count(*) as n, Year
FROM TrackQuantity
Where TrackQuantity.Year = '2013'
group by name
order by 2 desc
limit 3
;

