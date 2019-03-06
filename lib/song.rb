require "pry"


class Song 
 
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []
  @@genre_count = {}
  @@artist_count = {}
  def self.count
   @@count
  end
 
  def initialize(name, artist, genre)
  @name = name
  @genre = genre
  @artist = artist
  @@count += 1
 @@artists << artist
 @@genres << genre
  
  end
  
  def self.count
  @@count
  end
  
  def self.artists
    @@artists.uniq!
    binding.pry
  end
  def self.genres
    @@genres.uniq!
   #binding.pry
        
  end
  def self.genre_count
     @@genres.each do |genre|
     if @@genre_count[genre]
     @@genre_count[genre] += 1
     else
     @@genre_count[genre] = 1
     end
     end
   # binding.pry
    @@genre_count
   end
  
  def self.artist_count
@@artists.each do |artist|
  if @@artist_count[artist]
    @@artist_count[artist] += 1 
  else
    @@artist_count[artist] = 1 
    
     end
     
    end
    
  end
    def self.genre_count
    @@genres.map do |genre|
      self.genre_count[:genre]
     # binding.pry
    end    
  end
  

end
