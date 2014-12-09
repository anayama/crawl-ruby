# -*- coding: utf-8 -*-
require 'anemone'

Anemone.crawl("http://yahoo.co.jp") do |anemone|
    # admin"/r/"を含むURLは除外
    anemone.skip_links_like /\/r\//
    anemone.on_every_page do |page|
        puts page.url
    end
end
