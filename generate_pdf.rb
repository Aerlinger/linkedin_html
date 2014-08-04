require 'rubygems'
require 'doc_raptor'

dpi = (ARGV && ARGV.first) || 100

DocRaptor.api_key "HbEeYNkfFXaqNUhLSzRa"

pdf_html = File.read("anthony_erlinger_resume.html")
test = false

File.open("anthony_erlinger_resume#{test ? "_test" : ""}.pdf", "w+b") do |f|
  f.write DocRaptor.create :document_content => pdf_html,
                           :name             => "anthony_erlinger_resume#{test ? "_test" : ""}.pdf",
                           :document_type    => "pdf",
                           :test             => test,
                           :prince_options    => {
                             css_dpi: dpi
                           }
end

