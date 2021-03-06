class Genre
  
  attr_accessor :name, :songs
  
  extend Concerns::Findable
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def self.destroy_all
    @@all.clear
  end
  
  def save
    @@all << self
  end
  
  def self.create(name)
    new(name).tap {|n| n.save} #nope
  end
  
  def artists
    self.songs.collect {|g| g.artist}.uniq #nope
  end
  
  
end