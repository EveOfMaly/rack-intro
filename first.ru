require 'rack'

# Instances of Proc automatically have a call method that runs the block that
# they're initialized with.
my_server = Cat.new do
  [200, { 'Content-Type' => 'text/html' }, ['<em>Hello World</em>']]
end

run my_server