require_relative "../config/environment"

puts "Create your Pokemon!!"
puts "========================="
puts ""

puts  "What is your Pokemon's name?"
pokemon_name = gets.chomp

puts "What is your Pokemon's move?"
pokemon_move = gets.chomp


pokemon = Pokemon.create(
  name: pokemon_name,
  move: pokemon_move
)

puts "Here is your Pokemon, #{pokemon.name}"

puts "-------------------------------"
puts ""

puts "Here are all of the Pokemon we have made:"

Pokemon.all.each do |pokemon|
  puts "#{pokemon.name}"
  puts "oh no..#{pokemon.attack}"
end
