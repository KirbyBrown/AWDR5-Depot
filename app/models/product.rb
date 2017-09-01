class Product < ApplicationRecord
  validates :title, :description, :image_url, presence: true
  validates_length_of :title, minimum: 10, message:
    "That title is weak! Make it at least 10 characters!"
  validates :title, uniqueness: true
  validates :price, numericality: {greater_than_or_equal_to: 0.01}
  validates :image_url, allow_blank: true, format: {
    with:     %r{\.(gif|jpg|png)\Z}i,
    message:  'must be a URL for GIF, JPG, or PNG image.'
  }
end
