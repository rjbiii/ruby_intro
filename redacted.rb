puts "enter text now"
text = gets.chomp

puts "redacted text"
redact = gets.chomp

redacts = redact.downcase.split(" ")
words = text.downcase.split(" ")
rtext = "Your redacted string is: "

words.each do |action1|
    if redacts.include? action1
        rtext += "REDACTED "
    else
        rtext += action1 + " "
    end
end
print rtext