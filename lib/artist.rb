require 'pry'

class Artist
  include Memorable
  include Findable
  include Paramable
  attr_accessor :name
  attr_reader :songs

  @@artists = []

  def initialize
    super
    @songs = []
  end

  def self.all
    @@artists
  end

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  extend Paramable


  def add_song(song)
    @songs << song
    song.artist = self
  end

  def add_songs(songs)
    songs.each { |song| add_song(song) }
  end
end
