class Project

  attr_reader :title

  def initialize(title)
    @title = title

  end

  def add_backer(backer)
    ProjectBacker.new(self, backer)
  end

  def backers
    # return all of the backers for this project instance
    my_ships = ProjectBacker.all.select do |ship|
      ship.project == self
    end

    my_ships.map do |my_ship|
      my_ship.backer
    end

  end

end
