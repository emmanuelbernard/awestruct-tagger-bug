require 'bootstrap-sass'
require 'tagger'

Awestruct::Extensions::Pipeline.new do
  extension Awestruct::Extensions::Posts.new '/news'
  extension Awestruct::Extensions::Tagger.new( :posts, 
                                               '/news/index', 
                                               '/news/tags', 
                                               :per_page=>10 )
  # extension Awestruct::Extensions::Indexifier.new
  # Indexifier *must* come before Atomizer
  # extension Awestruct::Extensions::Atomizer.new :posts, '/feed.atom'
end
