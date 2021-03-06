module Clarity
  module Mime
    def self.for(filename)
      
      content_type = TYPES[File.extname(filename)] 
      content_type || 'text/plain'
    end
    
    TYPES = {
      '.jpg'    =>  'image/jpg', 
      '.jpeg'   =>  'image/jpeg',
      '.gif'    =>  'image/gif', 
      '.png'    =>  'image/png',
      '.bmp'    =>  'image/bmp',
      '.bitmap' =>  'image/x-ms-bmp',
      '.js'     => 'application/javascript',
      '.txt'    => 'text/plain',
      '.css'    => 'text/css',
      '.html'   => 'text/html',
      '.htm'    => 'text/html'
    }
  end
end