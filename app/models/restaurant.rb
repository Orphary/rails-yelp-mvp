class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  CATEGORY = ["chinese", "italian", "japanese", "french", "belgian"]

  validates :name, :address, :phone_number, presence: true
  validates :category, presence: true, inclusion: { in: CATEGORY }

end
