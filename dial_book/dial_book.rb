dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
=begin
  somehash.each do |each_dial|
    puts each_dial[0]
  end
=end
  somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
=begin
  somehash.each do |each_dial|
    if each_dial[0] == key
      each_dial[1]
    end
  end
=end
  somehash[key]
end
 
# Execution flow
loop do
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  loop_flag = gets.chomp.downcase
  break unless ['y'].include?(loop_flag)
  
  puts "Which city do you want the area code for?"
# get_city_names(dial_book)
  puts get_city_names(dial_book)

  puts "Enter your selection"
  city_flag = gets.chomp.downcase
  if dial_book.include?(city_flag)
    code = 
    puts "The area code for #{city_flag} is #{get_area_code(dial_book,city_flag)}"
  else
    puts "You entered an invalid city name"
  end
end