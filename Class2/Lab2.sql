select artists.Name, count(*) as n
	FROM albums 
	JOIN artists ON albums.Artistid = artists.Artistid
	JOIN tracks ON albums.AlbumId = tracks.AlbumId
	JOIN invoice_items ON tracks.TrackId = invoice_items.TrackID
	JOIN invoices ON invoice_items.InvoiceId = invoices.InvoiceId
	JOIN customers ON invoices.CustomerId = customers.CustomerId
	WHERE customers.STATE = 'CA'
	group by artists.Name
	order by 2 desc 
limit 3;
