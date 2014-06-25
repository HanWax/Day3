


def print_header
  puts "The students of my cohort at Makers Academy\n".center(100)
  puts "-------------\n".center(100)
end
def print_names(students)
  # students.each.with_index(1) do |student, index|
  i = 0
  while i < students.length do 
    puts "#{students[i][:name]} (#{students[i][:cohort]} cohort) \n".center(100)
    i += 1 #if (student[:name].downcase.start_with?("a") && student[:name].length < 4)
  end
end

def print_footer(names)    
  print center("Overall, we have #{names.length} great students \n")
end

def ask_for(value)
  puts center("#{value}? =>")
  gets.chomp
end

def input_students
  puts "Please enter the names of the students".center(100)
  print "To finish, just hit return twice\n".center(100)
  # create an empty array
  students = []
  # get the first name
  name = ask_for('name')
  cohort = ask_for('cohort')
  if cohort.empty?
    cohort = "June"
  end
   

  # while the name is not empty, repeat this code
  while !name.empty? do    
    # add the student hash to the array
    students << {:name => name, :cohort => cohort}     
    print "Now we have #{students.length} students\n".center(100)
    # get another name from the user
    name = ask_for('name')
    cohort = ask_for('cohort')
  if cohort.empty?
    cohort = "June"
  end
  end
  # return the array of students
  students
end

def center(string)
  string.center(100)
end



students = input_students
print_header
print_names(students) 
print_footer(students)