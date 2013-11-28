class Student

	attr_reader :first_name, :last_name, :grade
	def initialize(first_name, last_name, grade)
		@first_name = first_name
		@last_name = last_name
		@grade = grade
	end

	def senior?
		grade == 12
	end
  
  def junior?
    grade == 11
  end

	def to_s
		"#{last_name}, #{first_name}"
	end
end

def roll_call(students,grade)
  puts "#{grade.capitalize}:"
  if %w(junior senior).include?(grade)
    students.select { |student| student.send("#{grade}?".to_sym)}.each do |stu|
      puts "* #{stu}"
    end
  else  
    puts "Sorry you cannot call that grade"
  end
end

fred = Student.new("Fred", "James", 12)
sarah = Student.new("Sarah", "Smith", 12)
jack = Student.new("Jack", "Gong", 11)
all_students = [fred, sarah, jack]

%w(senior junior freshman).each do |grade|
  roll_call(all_students,grade)
end

#---------------Old Code Ideas------------#

#def seniors(students)
#  puts "Seniors: "
#  students.select { |student| student.senior? }.each do |senior|
#    puts "* #{senior}"
#  end
#end

#def juniors(students)
#  puts "Juniors: "
#  students.select { |student| student.junior? }.each do |junior|
#    puts "* #{junior}"
#  end
#end

#def roll_call(students, grade)
#  if ["senior","junior"].include?(grade)
#    puts "#{grade.capitalize}:"
#    students.select { |student| student.grade? }.each do |stu| # where grade? is either junior? or senior? based on the method param
#      puts "* #{stu}"
#    end
#  else
#    puts "Sorry you cannot call that grade"
#  end  
#end


# def roll_call(students, grade)
#   puts "#{grade.capitalize}:"
#   if grade == "senior"
#     students.select { |student| student.senior? }.each do |stu|
#       puts "* #{stu}"
#     end
#   elsif grade == "junior"
#     students.select { |student| student.junior? }.each do |stu| 
#       puts "* #{stu}"
#     end
#   else
#     puts "Sorry you cannot call that grade"
#   end  
# end

#seniors(all_students).each do |student|
#  puts "* #{student}\n"
#end
#seniors(all_students)
#juniors(all_students).each do |student|
#  puts "* #{student}\n"
#end
#juniors(all_students)

# roll_call(all_students, "senior")
# roll_call(all_students, "junior")
# roll_call(all_students, "freshman")

