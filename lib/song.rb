require 'pry'

class Song
  include Memorable
  include Findable
  include Paramable
  attr_accessor :name
  attr_reader :artist

  @@songs = []

  def initialize
    super
  end

  def self.all
    @@songs
  end

  extend Memorable::ClassMethods
  include Memorable::InstanceMethods
  extend Findable
  extend Paramable


  def artist=(artist)
    @artist = artist
  end
end
