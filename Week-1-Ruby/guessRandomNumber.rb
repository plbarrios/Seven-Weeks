def guessRandomNumber
  random = rand(10)
  input = gets().to_i
  puts 'too low' if random > input
  puts 'too high' if random < input
  puts 'yeah!!!' if random == input
end

guessRandomNumber

puts 'Press Enter to exit'
gets()