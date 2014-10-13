require 'anemone'

urls = []
urls.push("http://www.amazon.co.jp/gp/bestsellers/digital-text/2291657051/")
urls.push("http://www.amazon.co.jp/gp/bestsellers/digital-text/2291905051/")
urls.push("http://www.amazon.co.jp/gp/bestsellers/books/466295")
urls.push("http://www.amazon.co.jp/gp/bestsellers/books/466282")

Anemone.crawl(urls, depth_limit: 0) do |anemone|
  anemone.on_every_page do |page|
    puts page.url
  end
end
