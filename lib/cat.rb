class Cat
  attr_reader :name
  attr_accessor :owner, :mood 
  @@all = Array.new 
  
  def initialize(name, owner)
    @name = name 
    @owner = owner 
    @mood = 'nervous'
    Cat.all << self 
    
  end 

def self.all
  @@all 
end 



end

