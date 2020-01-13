require 'http'

system "clear"

puts
puts " Fortune App ".center(50, "*")
puts "=" * 50
puts

puts " [1] Random Fortune "
puts " [2] Lotto numbers "
puts " [3] Sing a shanty"

puts "Pick an option:"
user_input = gets.chomp

if user_input.to_i == 1
  response = HTTP.get("http://localhost:3000/api/fortune_url")
  fortune_message = response.parse["fortune"]
  puts fortune_message
elsif user_input.to_i == 2
  response = HTTP.get("http://localhost:3000/api/random_url")
  lotto_message = response.parse["numbers"]
  puts lotto_message

end