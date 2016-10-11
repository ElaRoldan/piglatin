def word_pig_latin(word)
  if ("aeiou").include?(word[0]) 
    word << "way"
  elsif ("gl ph tr sc wh th sh sch gh qu").include?(word[0..1])
    word[2..-2] << word[0..1] << "ay"
  else
    word[1..-1] << word[0] << "ay"
  end
end 
 
 
def pig_latin(sentence)
  sentence_array = sentence.split()
  string = ""
  sentence_array.each do |word|
      string << word_pig_latin(word) << " "
  end 
  string
end 
 
p word_pig_latin("apple")
p word_pig_latin("physic")
p word_pig_latin("hector")
p pig_latin("Esta es la oracion de prueba para pig latin")