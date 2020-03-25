#Empty array to start the day
katz_deli = []


def line(array)
  #checks if array is empty
   if array.empty?
     puts "The line is currently empty."
   else
     new_array = []
     # takes in the order of names and sets a new array to have the number first then say their name
     # this is done because normally index starts at 0 and we wants the list to start at 1
     array.each_with_index {|name , index| new_array << "#{index+1}. #{name}"}
     #takes the array and puts them in a string so it reads out the list of names
     new_string = "The line is currently: #{new_array.join(" ")}"
     puts new_string
   end
 end

def take_a_number(array = [] , name)
  #checks if array is empty
  if array.empty?
    #adds (or pushes) name to the array
    array << name
    # welcomes guest and tells them they are number 1 in line
    puts "Welcome, #{name}. You are number 1 in line."
  #array is not empty so will do the following code...
  else
    #adds name to new array (coding no destructively)
    temp_array = array << name
    # wlecomes them and tells them what position in line they are
    puts "Welcome, #{name}. You are number #{temp_array.size} in line."
  end
end

def now_serving(array = [])
  #checking if array is empty
  if array.empty?
    #tells us there is no line when array is empty
    puts "There is nobody waiting to be served!"
  #since the array is not empty we will run this code
  else
    puts "Currently serving #{array.shift}."
  end
end
