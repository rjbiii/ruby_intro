puts "Input text:"
string = gets.chomp

puts "Input words you want to redact (seperate with space):"
redact = gets.chomp.downcase

words = string.split(" ")
r_words = redact.split(" ")
r_string = "Your redacted string is: "

words.each do |w|
    if redact.include? w.downcase
        r_string += "REDACTED "
    else
        r_string += "#{w} "
    end     
end

puts ""
puts r_string