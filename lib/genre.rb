class Genre
    attr_accessor :genre, :name

    @@all = []
    def initialize(name)
        @name = name
        @@all << self
        @songs = []
       
    end

    def self.all
        @@all
    end

    def songs
        Song.all.select do |song|
            song.genre == self
        end
    end

    def artists
      self.songs.map {|song| song.artist}
    end

end