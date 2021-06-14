class Gallery

  attr_reader :name, :city, :artist

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    @@all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|painting| painting.gallery == self}
  end

  def artists
    self.paintings.map { |painting| painting.artist }.uniq
  end

  # def artists
  #   self.paintings.map {|painting| painting.artist}
  # end

  def artist_names
    self.artists.map { |artist| artist.name}
  end

  def most_expansive_painting
    self.paintings.max_by {|painting| painting.price }
  end

end
