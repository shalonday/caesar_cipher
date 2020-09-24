
def caesar_cipher(word, number)
  smalls = ('a'..'z')
  caps = ('A'..'Z')
  wordArray=word.split("")

result = wordArray.reduce('') do |acc,item| 
if smalls.include?(item) || caps.include?(item)
  acc + cipherize(item, number)
else
  acc + item
end
end

return result
end

def cipherize(char, number)
  smalls = ('a'..'z')
caps = ('A'..'Z')
  letterSet = caps.include?(char) ? caps : smalls
  index = letterSet.find_index(char)
  newIndex = index + number
  
  if newIndex >= letterSet.to_a.length
    newIndex -= letterSet.to_a.length
  end

  newChar = letterSet.to_a[newIndex]  
  return newChar
end

puts "What word should I caesar cipher?"
word = gets.chomp
puts "What number should I shift with?"
number = gets.chomp.to_i

puts caesar_cipher(word, number)