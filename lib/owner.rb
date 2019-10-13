class Owner
  # code goes here
  @@all = []
  
  attr_reader :name, :species
  
  def initialize(name)
    @name = name
    @species = "human"
    @@all << self
  end
  
  def self.all 
    return @@all
  end
  
  def self.count
    return @@all.count
  end
  
  def say_species
    return "I am a #{species}."
  end
  
  def buy_cat(name)
    Cat.new(name, self)
  end
  
  def cat_collect
    return Cat.all
  end
  
  def cats
    all_cats = cat_collect
    return all_cats.select do |cat|
      cat.owner == self
    end
  end
  
  def feed_cats
    my_cats = self.cats 
    my_cats.each do |cat| 
      
    end
  end
  
end