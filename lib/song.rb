require 'pry'

class Song

  attr_accessor :name, :artist

  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    bruh = filename.split(" - ")
    artist_name = bruh[0]
    song_name = bruh[1]
    genre = bruh[2]
    song = self.new(song_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(song)
    song.artist = artist
    song
  end




end