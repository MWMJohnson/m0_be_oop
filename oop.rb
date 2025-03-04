# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    def initialize(name)
      @name = name
      @color = 'silver'
    end
  
    def say(word)
      p "*~*#{word}*~*"
    end
  end
  
  unicorn1 = Unicorn.new('Suzy')
  p unicorn1
  
  unicorn1.say('tabitha')




#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = 'bat')
      @name = name
      @pet = pet
      @thirsty = true
    end
  
    def drink
      @thirsty = false
    end
  end
  
  p vampire1 = Vampire.new('Bob', 'dog')
  vampire1.drink
  p vampire1


#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(name, rider, color)
      @name = name
      @rider = rider
      @color = color
      @is_hungry = true
      @num_eats = 0
    end
  
    def eat
      @num_eats += 1
      @is_hungry = false if @num_eats >= 4
    end
  end
  
pp dragon1 = Dragon.new('Bill', 'Joe', 'Green')
#dragon1.eat
#dragon1.eat
#dragon1.eat
#dragon1.eat
#faster way to code using on line instead of the 4 ABOVE, use this below:
4.times { dragon1.eat }
pp dragon1


#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

#Incorrect code originally submitted in Mod 0
class Hobbit
    def initialize(name, disposition, age = 0)
      @name = name
      @disposition = disposition
      @age = age
      @is_old = false
      @is_old = @age >= 101
      @is_adult = false
      @is_adult = @age >= 33
  
      @has_ring = @name == 'Frodo'
    end
  
    def celebrate_birthday
      @age += 1
    end
  end
  
  p hobbit1 = Hobbit.new('Bill', 'angry')

  #Reason it is incorrect is because when you call on the celebrate_birthday method 33 times in the code below (line 111) starting from zero is becuase it is only doing that in the initialized method, a better way to do this is to include the logic above in the defined celebrate_birthday method. Reference video from Kaitlyn in Slack message.
  33.times {hobbit1.celebrate_birthday}
  
  p hobbit1


  #Revised Code (this works instead of what you submitted below because you let the @age start with a constant variable for all hobbits at zero by default.)
  class Hobbit
    def initialize(name, disposition)
      @name = name
      @disposition = disposition
      @age = 0
      @is_old = false
      @is_adult = false
      @has_ring = @name == 'Frodo'
    end
  
    def celebrate_birthday
      @age += 1
      @is_old = true if @age >= 101
      @is_adult = true if @age >= 33
    end
  end
  
  p hobbit1 = Hobbit.new('Bill', 'angry')
  
  33.times { hobbit1.celebrate_birthday }
  p hobbit1