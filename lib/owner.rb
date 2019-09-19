
class Owner
attr_reader :name   
@@all = Array.new 


def initialize(name)
  @name = name 
  self.species 
  @@all << self 
end

def species
  @species = 'human'
end 

def say_species
  "I am a #{@species}."
end 

def self.all 
  @@all
end 

def self.count 
  self.all.count 
end 

def self.reset_all
  self.all.clear
end 

def cats 
  Cat.all.select {|cats| cats.owner == self}
end 

def dogs 
  Dog.all.select {|dogs| dogs.owner == self}
end 

def buy_cat(name)
Cat.new(name, self)
end

def buy_dog(name)
Dog.new(name, self)
end 

def walk_dogs
dogs.each {|dogs| dogs.mood = 'happy'}
end 

def feed_cats 
cats.each {|cats| cats.mood = 'happy'}
end 

def sell_pets 
dogs.each {|dogs| dogs.mood = 'nervous'}
cats.each {|cats| cats.mood = 'nervous'}
end 
end 