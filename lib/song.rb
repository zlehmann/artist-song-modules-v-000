require 'pry'

class Song
  include Memorable
  include Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    @@songs << self
  end

  def self.all
    @@songs
  end

  extend Memorable::ClassMethods
  extend Findable
  extend Paramable


  def artist=(artist)
    @artist = artist
  end

  #def to_param
  #  name.downcase.gsub(' ', '-')
  #end
end
