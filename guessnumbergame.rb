new_game = "s"

while new_game == "s"
  puts "Guess the number that im thinking 1 e 100:"
  your_number = gets.to_i

  pc_number = Random.rand(99) + 1

  attempts = 1

  while pc_number != your_number
    puts "The number is bigger #{your_number}" if pc_number > your_number
    puts "The number is smaller #{your_number}" if pc_number < your_number
    
    attempts += 1
    puts "Try again: "
    your_number = gets.to_i

  end
  
  puts "Congratulations! You've found the number in #{attempts} attempts."

  puts "Do you want to play again? (s/n)"
  new_game = gets.chomp 
end

puts " Thanks for playing, Goodbye!"