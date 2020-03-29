class School 
  attr_accessor :roster, :student, :grade
  
  def initialize(name)
    @name = name
    @roster = roster
    @roster = {}
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
    roster[grade]
  end 
  
  def sort 
    sort_hash = {}
    roster.each do |k, v| 
      sort_hash[k] = v.sort 
    end 
      sort_hash
  end 
  
end