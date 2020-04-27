class Artist
    attr_accessor :name, :songs

    @@all = []
   
    def initialize(name)
        @name = name
        @@all << self
        
    end

    def songs
        Song.all.select{|x| x.artist == self}
    end

    def add_song(song)
        song.artist = self
    end

    def add_song_by_name(name)	
        song = Song.new(name)	
        song.artist = self	
    end

    def self.song_count	
        Song.all.length
      end


end
