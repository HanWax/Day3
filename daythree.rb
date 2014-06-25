def print_header
  print "The students of my cohort at Makers Academy\n"
  print "-------------\n"
end

def print_names(students)
  # students.each.with_index(1) do |student, index|
  i = 0
  while i < students.length do 
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort) \n"
    i += 1 #if (student[:name].downcase.start_with?("a") && student[:name].length < 4)
  end
end

def print_footer(names)    
  print "Overall, we have #{names.length} great students \n"
end

def input_students
  print "Please enter the names of the students \n"
  print "To finish, just hit return twice \n"
  # create an empty array
  students = []
  # get the first name
  name = gets.chomp
  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    students << {:name => name, :cohort => :november}    
    print "Now we have #{students.length} students\n"
    # get another name from the user
    name = gets.chomp
  end
  # return the array of students
  students
end

students = input_students
print_header
print_names(students) 
print_footer(students)