require 'anemone'

urls = [
    "http://www.amazon.co.jp/gp/bestsellers/books/",
    "http://www.amazon.co.jp/gp/bestsellers/digital-text/2275256051/"
]

Anemone.crawl(urls, depth_limit: 1, skip_query_string: true) do |anemone|
  anemone.focus_crawl do |page|
    page.links.keep_if { |link|
      link.to_s.match(
          /\/gp\/bestsellers\/books|\/gp\/bestsellers\/digital-text/)
    }
  end

  PATTERN = %r[466298\/+|466282\/+|2291657051\/+|2291905051\/+]

  anemone.on_pages_like(PATTERN) do |page|
    ppage.url
  end

end

