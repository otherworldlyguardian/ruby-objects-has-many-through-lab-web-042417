class Genre
  attr_accessor :name, :songs

  def initialize(name)
    @name, @songs = name, []
  end

  def add_song(song)
    self.songs << song
  end

  def artists
    self.songs.collect {|song| song.artist}
  end

end
