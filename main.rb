def substrings(text, dictionary)
  #case insensitive
  text.downcase!
  #substring array from the text
  substring = text.split(" ")

  #new hash for the substring and its count
  frequencies = Hash.new(0)

  substring.each do |string|
    word = string.gsub(/[^0-9A-Za-z]/, '')  #del special char
    #add to frequencies hash if a word matches dictionary
    if dictionary.include? word
      frequencies[word] += 1
    else
      next
    end
  end
  print frequencies
end

puts "Please enter your text:"
text = gets.chomp
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings(text, dictionary)