# local_variable # only exists where it exists i.e in a method 
# @instance_variable # can be
# @@class_variable
# $global_variable #the same throughout all of the code
# CONSTANT_VARIABLE #cant change



# block_variable
# argument_variable #local variable that is passed into something as an argument


class Sheep
  @@count = 0
  def initialize
    @@count += 1
    @id = @@count
    @awake_percentage = rand(1..100)
  end

  def self.how_many
    puts "There are #{@@count} sheep."
    
  end

  def class_count
    @@count

  end

  def is_awake?
    awake_percentage > 50
    
  end

private
  def awake_percentage
    @awake_percentage
  end
end

sheep = Sheep.new
p sheep.is_awake?