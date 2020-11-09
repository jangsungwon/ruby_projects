# Hash, Array, Branching, While loops

users = [
  { username: "mashrur", password: "password1"},
  { username: "jack", password: "password2"},
  { username: "arya", password: "password3"},
  { username: "jonshow", password: "password4"},
  { username: "heisenberg", password: "password5"}
]

puts "Welcome to the authentucator"
25.times {print "-"}
puts
puts "This program will take input from the user and compare password"
puts "If password is correct, you will get back the user object"

=begin
username = []
password = []
=end

def authentic(p,v,list_users)
  list_users.each do |user|
    if user[:username] == p && user[:password] == v
      return user
    end
  end
  "Credentials were not correct" # last is return implied
end

attempts = 1

while attempts < 4
  print "Username: "
# username.push(gets.chomp)
  username = gets.chomp
  print "Password: "
# password.push(gets.chomp)
  password = gets.chomp
  puts authentic(username, password, users)
  print "Press n to quit or any otheer key to continue: "
  pressFlag = gets.chomp.downcase

=begin
  if pressFlag == "n"
    break
  end
=end
  break if pressFlag == "n"

  attempts += 1
end

puts "You have exceeded the number of attempts" if attempts == 4