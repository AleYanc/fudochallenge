require 'socket'
require 'json'

server = TCPServer.new 8085
 
while session = server.accept
  request = session.gets
 
  session.print "HTTP/1.1 200\r\n"
  session.print "Content-Type: text/html\r\n"
  session.print "\r\n"
  session.puts "#{JSON[random: rand(1..100)]}"
 
  session.close
end