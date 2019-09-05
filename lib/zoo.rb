class Zoo
  attr_reader :cages, :employees
  def initialize(name, season_opening_date, season_closing_date)
    @name = name
    @season_opening_date = season_opening_date
    @season_closing_date = season_closing_date
    @cages = []
    @employees = []

    10.times do
      @cages.push(Cage.new)
    end

  end

  def add_employee(employee)
    @employees << employee
  end

  def open?(date)
    date >= @season_opening_date && date <= @season_closing_date
  end
  def add_animal(animal)
    @cages.each do |cage|
      if cage.empty?
        return cage.animal = animal
      else
        puts "The dang cage is full!!"
      end
    end
    return "We got so many animals, it's ridiculous."
  end

  def visit
    final_string = ""
    @employees.each do |employee|
      final_string += "#{employee.greet}\n"
    end
    @cages.each do |cage|
      if !cage.empty?
        final_string += "#{cage.animal.speak}\n"
      end
    end

    return final_string
  end

end
