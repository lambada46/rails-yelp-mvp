class Restaurant < ApplicationRecord

  CATEGORIES = ["chinese", "italian", "japanese", "french", "belgian"]

  has_many :reviews, dependent: :destroy
  # A restaurant must have at least a name and an address.
  validates :name, :address, :phone_number,  presence: true
  validates :category, inclusion: { in: Restaurant::CATEGORIES,
  message: "%{value} is not a valid categoy" }
end
