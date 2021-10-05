def substrings(word, dictionary)
  word.downcase!
  if dictionary.include ? word
    puts "Yes"
  else puts "NO"
  end
end

puts "Please enter your word:"
word = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings(word, dictionary)