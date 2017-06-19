class Appearance < ApplicationRecord
  belongs_to :guest
  belongs_to :episode
  validates :guest, presence: true
  validates :rating, presence: true
  validates :rating, numericality: { less_than_or_equal_to: 5 }
  validates :rating, numericality: { greater_than_or_equal_to: 1 }
end
