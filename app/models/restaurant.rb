class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  # A restaurant must have at least a name and an address.
  validates :name, :address, :phone_number, presence: true
  validates :category, inclusion: { in: ["chinese", "italian", "japanese", "french", "belgian"],
  message: "%{value} is not a valid categoy" }
end
