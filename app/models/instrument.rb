class Instrument < ApplicationRecord
  has_many :artist_instruments
  has_many :artists, through: :artist_instruments


  def name_and_class
    "#{self.name} #{self.classification}"
  end 
end
