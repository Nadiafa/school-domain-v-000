class School
  attr_reader :name, :roster

  def initialize(name)
    @name = name
    @roster = {}
  end

  def add_student(student, grade)
    roster[grade] ||= []
    roster[grade] << student
  end

  def grade(grade)
    @roster[grade]
  end

  def sort
    sorted = {}
    roster.each { |grade, student| sorted[grade] = student.sort }
    sorted
  end
end






class Album
  attr_accessor :title, :author, :release_year
  @@all = []
  def initialize(title, author, release_year)
    @title = title
    @author = author
    @release_year = release_year
    @@all << @title
  end
end
black_sunday=Album.new("Black Sunday", "Cypress Hill", 1993)
temples_of_boom=Album.new("Temples of Boom", "Cypress Hill", 1995)
skull_and_bones=Album.new("Skull & Bones", "Cypress Hill", 2000)
