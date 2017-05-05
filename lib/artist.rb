class Artist
  attr_accessor :name, :songs, :genre

  def initialize(name)
    @name, @songs, @genre = name, [], []
  end

  def add_song(song)
    self.songs << song
    song.artist = self
  end

  def genres
    self.songs.collect {|song| song.genre}
  end

end
