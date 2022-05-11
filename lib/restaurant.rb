class Restaurant
  attr_reader :opening_time, :name, :dishes

  def initialize(opening_time, name)
    @opening_time = opening_time
    @name = name
    @dishes = []
  end

  def closing_time(open_hours)
    # start_hour = @opening_time[0..1].to_i
    # start_hour = @opening_time.chop.chop.chop

    # split_time = @opening_time.split(":")
    # # => ["10", "00"]
    #
    # the_hour = split_time[0].to_i
    # # => 10
    #
    # new_hour = open_hours + the_hour
    # # => 18
    #
    # stuff_to_return = new_hour.to_s + split_time[1]
    #
    # return stuff_to_return


    closing = @opening_time.to_i + open_hours
    # => 10 + 8
    "#{closing}:00"
    # => "18:00"
  end

  def add_dish(dish)
    @dishes << dish

    # @dishes.push(dish)
  end

  def open_for_lunch?
    # @opening_time.to_i < 12
    @opening_time < "12:00"
    # if @opening_time.to_i < 12
    #   true
    # else
    #   false
    # end

  end

  def menu_dish_names
    capitalized_dishes = []
    @dishes.each do |dish|
      capitalized_dishes << dish.upcase
    end
    capitalized_dishes
  end

end