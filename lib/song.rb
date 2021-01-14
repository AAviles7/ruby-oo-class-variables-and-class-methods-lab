class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists.push(artist)
        @@genres.push(genre)
        @@count += 1
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.count
        @@count
    end

    def self.genre_count
        ans = {}
        x = 0
        @@genres.length.times do
            if !ans.include?(@@genres[x])
                ans[@@genres[x]] = 1
            else
                ans[@@genres[x]] += 1
            end
            x += 1
        end
        return ans
    end

    def self.artist_count
        ans = {}
        x = 0
        @@artists.length.times do
            if !ans.include?(@@artists[x])
                ans[@@artists[x]] = 1
            else
                ans[@@artists[x]] += 1
            end
            x += 1
        end
        return ans
    end

end