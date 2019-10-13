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
  
  def buy_cat
    Cat.new(name, self)
  end
  
  def cat_collect
    return Cat.all
  end
  
  def cats
    all_cats = cat_collect
    all_cats.map do |cat|
      cat
    end
  end
  
end