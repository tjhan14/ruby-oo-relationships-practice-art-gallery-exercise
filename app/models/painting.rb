class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price

    @artist = artist
    @gallery = gallery
    # populate the array in "@@all = []" 
    @@all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    self.all.sum {|painting| painting.price}
  end

end
