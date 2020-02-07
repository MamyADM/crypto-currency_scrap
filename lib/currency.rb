class Currency

	def scrap
		page = Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/"))
		currency = Array.new

		crypto_symbols = page.css('td[class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--left cmc-table__cell--sort-by__symbol"]').map {|e| e.text }
		crypto_prices = page.css('td[class="cmc-table__cell cmc-table__cell--sortable cmc-table__cell--right cmc-table__cell--sort-by__price"]').map {|e| e.text }

		h = Hash[crypto_symbols.zip(crypto_prices)]

		h.each { |k, v|
			currency << {"#{k}" => "#{v}"}
		}

		puts currency		
	end

end