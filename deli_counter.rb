katz_deli = []

#shows everyone their place in line
def line(array)
  current_line = []
  if array.empty?
    puts "The line is currently empty."
  else !array.empty?
    array.each_with_index do |name, index|
      one_index = index + 1
      current_line.push("#{one_index}. #{name}")
    end  
    puts "The line is currently: #{current_line.join(" ")}"
  end
end


#puts a name and position number in line
def take_a_number(array, name)
  array.push(name)
  puts "Welcome, #{name}. You are number #{array.length} in line."
end


#puts next person in line (i.e. first element in array) and removes their name from the array
def now_serving(array)
  if array.empty?
    puts "There is nobody waiting to be served!"
  else !array.empty?
    puts "Currently serving #{array[0]}."
    array.shift
  end
end