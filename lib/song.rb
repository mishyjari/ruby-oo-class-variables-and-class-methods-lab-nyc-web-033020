require 'pry'

class Song
  
  @@count = 0
  
  @@genres = []
  @@artists = []
  
  @@genre_count = {}
  @@artist_count = {}
  
  attr_accessor :name, :artist, :genre
  
  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    
    # Iterate counter and push args into class arrays
    @@count += 1
    @@genres.push(genre)
    @@artists.push(artist)
    
    # Create genre and artist keys in count hashes if not exist then iterate
    @@artist_count[artist] = 0 if !@@artist_count[artist]
    @@artist_count[artist] += 1
    
    @@genre_count[genre] = 0 if !@@genre_count[genre]
    @@genre_count[genre] += 1
    

  end
  
  # getters
  def self.count
    @@count
  end
  def self.artists
    @@artists.uniq # uniq() method to filter duplicates
  end
  def self.genres
    @@genres.uniq
  end
  
  def self.artist_count
    @@artist_count
  end
  def self.genre_count
    @@genre_count
  end
end
