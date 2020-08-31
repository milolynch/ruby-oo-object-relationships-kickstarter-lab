

class Backer

  attr_reader :name

  def initialize(name)
    @name = name

  end

  def back_project(project)

    #new project_backer instance useing self (backer) and paramiter (project)
    ProjectBacker.new(project,self)


  end

  def backed_projects

    my_ships = ProjectBacker.all.select do |ship|
      ship.backer == self
    end

    my_ships.map do |my_ship|
      my_ship.project
    end

  end

end


#bob.back_project(awesome_project)

#bob.backed_projects
