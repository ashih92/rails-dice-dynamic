class ZebraController < ApplicationController
  def rice
    @rolls = []

  2.times do
    die = rand(1..6)

    @rolls.push(die)
  end
  render({:template=>"pages_template/2d6"})
  end

  def noodles
    @rolls = []

  2.times do
    die = rand(1..10)

    @rolls.push(die)
  end
  render({:template=>"pages_template/2d10"})
  end

  def tacos
    @rolls = []

  1.times do
    die = rand(1..20)

    @rolls.push(die)
  end
  render({:template=>"pages_template/1d20"})
  end

  def tofu
    @rolls = []

  5.times do
    die = rand(1..4)

    @rolls.push(die)
  end
  render({:template=>"pages_template/5d4"})
  end

  def home 
  render({:template=>"pages_template/homepage"})
  end

  def flex
    @num_dice = params.fetch("number_of_dice").to_i

    @sides = params.fetch("number_of_sides").to_i
  
    @rolls = []
  
    @num_dice.times do
      die = rand(1..@sides)
  
      @rolls.push(die)
    end
  render({:template=>"pages_template/flex"})
  end

end
