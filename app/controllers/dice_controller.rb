class DiceController < ApplicationController
  def home
  end

  def one_twenty
    @rolls = roll_dice(1, 20)
    render template: "dice/one_twenty"
  end

  def two_six
    @rolls = roll_dice(2, 6)
    render template: "dice/two_six"
  end

  def two_ten
    @rolls = roll_dice(2, 10)
    render template: "dice/two_ten"
  end

  def five_four
    @rolls = roll_dice(5, 4)
    render template: "dice/five_four"
  end

  def flexible
    @num_dice = params[:number_of_dice].to_i
    @sides = params[:how_many_sides].to_i
    @rolls = roll_dice(@num_dice, @sides)
    render template: "dice/flexible"
  end

  private

  def roll_dice(number, sides)
    rolls = []
    number.times { rolls << rand(1..sides) }
    rolls
  end
end
