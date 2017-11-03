class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    if artist
      self.artist.name
    else
      nil
    end
  end

  def artist_name=(name)
    if !name.empty?
    artist = Artist.find_or_create_by_name(name)
    self.artist = artist
  #  artist.add_song(self)
end
  end
end
