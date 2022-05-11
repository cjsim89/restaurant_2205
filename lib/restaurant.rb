class Restaurant
  attr_reader :opening_time, :name, :dishes
  
  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  # def opening_time
  #   @opening_time
  # end
  #
  # def name
  #   @name
  # end

  # def dishes
  #   @dishes
  # end

end