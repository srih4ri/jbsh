class Game < ApplicationRecord
  def self.find_closest(location: nil)
    where(location: location).or(where("location like ?", "%#{location}%"))
  end
end
