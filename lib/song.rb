class Song
    
    @@count = 0
    @@genres = []
    @@artists = []

    attr_accessor :name, :artist, :genre


    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count = @@count + 1
        @@genres << genre
        @@artists << artist
        
    end

    def self.count
        @@count
    end
    
    def self.genres
        array = []
        @@genres.each do |genre|
            if !(array.include? genre)
                array << genre
            end
        end
        array
    end

    def self.artists
        array = []
        @@artists.each do |artist|
            if !(array.include? artist)
                array << artist
            end
        end
        array
    end
    
    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            if hash.has_key?(genre)
                hash[genre] = hash[genre] + 1
            else
                hash[genre] = 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            if hash.has_key?(artist)
                hash[artist] = hash[artist] + 1
            else
                hash[artist] = 1
            end
        end
        hash
    end

end