require 'pry'

class School
  attr_accessor :roster, :student , :grade
  
  def initialize(name)
    @name = name
    @roster = Hash.new
  end 
  
  def add_student(student, grade)
    if roster.has_key?(grade)
      roster[grade] << student 
    else 
      roster[grade] = []
      roster[grade] << student
    end
  end

  
  def grade(grade)
    @roster[grade]
  end 

  
  def sort 
    @roster.each.to_h {|key, value| value.sort}
  end 
  
end 