require 'rubygems'
require 'nokogiri'
require 'open-uri'

File.open('wiki.html', 'w') do |f|
page = Nokogiri::HTML(open("http://www.wikipedia.org/"))
wiki = page.css('a.link-box')
f.puts('<!DOCTYPE html><html><head><link type="text/css" rel="stylesheet" href="stylesheet.css"/></head><body>')
wiki.each do |w|
f.write("<div>" + w + "</div>\n")
end
f.puts ("</body></html>")
end
