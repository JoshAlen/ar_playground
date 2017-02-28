# if you have not installed the needed gems, please do the following:
# gem install sqlite3
# gem install activerecord

require "sqlite3"
require "active_record"

# this line configures ActiveRecord to connect to a sqlite3 database in the same folder named "students.sqlite3"
ActiveRecord::Base.establish_connection(:adapter => "sqlite3", :database => "./students.sqlite3")

# This sets up ActiveRecord to use Ruby OOP with SQL data
class Student < ActiveRecord::Base
end
# Student.create(name: "josh", email: "alen@gmail.com", age: 24)
# Student.find(1)
####################################
# Write your test code here

# 1. Create a new student using new and save
# student = Student.new
# student.name = "John"
# student.email = "John@gmail.com"
# student.age = 18
# student.save

# 2. Create a new student using create
# Student.create(name: "cool", email: "cool@aol.com", age: 55)

# 3. Select all students
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?
# p student = Student.all
# Why can't you do Student.name or Student.email?

# 4. Select the first student
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?
# p student = Student.first

# 5. Select the last student
# pay attention to the object that is returned to you, is it a Student object or Active Record relation object?
# p student = Student.last

# 6. Use each to iterate through the #<ActiveRecord::Relation> object to display the name of each student
# student = Student.all
# student.each do |k, v|
# 	p k.name
# end

# 7. Find student by the name Dr. Lois Pfeff using where.
# pay attention to the object that is returned to you, is it the Student object or Active Record relation object?
# student = Student.find_by(name: "Dr. Lois Pfeff")
# What will the following return to you? (remember to comment out the code!)
# p student.id
# p student.name
# p student.email
# p student.age


# 8. Find student by name using find_by
# pay attention to the object that is returned to you, is it the Student object or Active Record relation object?

# What will the following return to you?
# p student.id
# p student.name
# p student.email
# p student.age

# Do research on the difference between "where" and "find_by".

# 9. Find the student with id = 7 using find and find_by
# pay attention to the object that is returned to you, is it the User object or Active Record relation object?
# student = Student.find(7)
# p student

# 10. Update information for student with id = 5 using student.email and save. Change the student's email to elsie@example.com
# student = Student.find(5)
# student.update(email: 'elsie@example.com')
# p student

# 11. Now use update to update this student's age to 21.
# student.update(age: 21)
# p student

# 12. Delete student with id 21 using delete
# student = Student.find(21)
# p student
# student.delete

# 13. Delete student with id 22 using destroy
# student = Student.find(22)
# p student
# student.destroy