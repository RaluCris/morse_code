#hash containing all the translated alpha letters into morse

morse={"A"=>".-","B"=>"-...","C"=>"-.-.","D"=>"-..","E"=>".",
            "F"=>"..-.","G"=>"--.","H"=>"....","I"=>"..","J"=>".---",
            "K"=>"-.-","L"=>".-..","M"=>"--","N"=>"-.","O"=>"---",
            "P"=>".--.","Q"=>"--.-","R"=>".-.","S"=>"...","T"=>"-",
             "U"=>"..-","V"=>"...-","W"=>".--","X"=>"-..-","Y"=>"-.--",
             "Z"=>"--.."}


def print_morse
morse_code={"A"=>".-","B"=>"-...","C"=>"-.-.","D"=>"-..","E"=>".",
      "F"=>"..-.","G"=>"--.","H"=>"....","I"=>"..","J"=>".---",
      "K"=>"-.-","L"=>".-..","M"=>"--","N"=>"-.","O"=>"---",
      "P"=>".--.","Q"=>"--.-","R"=>".-.","S"=>"...","T"=>"-",
      "U"=>"..-","V"=>"...-","W"=>".--","X"=>"-..-","Y"=>"-.--",
      "Z"=>"--.."}
morse_code.each do
   |x,y|
   puts "#{x} is #{y} "
end
end


#text to be transformed
text=gets.chomp.upcase

#create array of morse chars
array_values=morse.values

#create array of text char
array_morse=text.split(" ")
text_morse=text.chars

#check if input is alpha
if text_morse[0].match(/^[[:alpha:]]+$/)
  #print morse output
    text_morse.each do |y|
      if y==" "
         print y
      else
         letter=morse.fetch("#{y}")
         print "#{letter}  "
      end
    end
else
  #print text output
  array_morse.each do |x|
    if array_values.include?("#{x}")
      letter=morse.key("#{x}")
      print letter
    else x=="/"
      print " "
   end
  end
end
