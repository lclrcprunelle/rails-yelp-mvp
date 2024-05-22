class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :category, presence: true, acceptance: { accept: ["chinese", "italian", "japanese", "french", "belgian"] }
  validates :phone_number, presence: true
  validates :address, presence: true

  # can't be blank "presence:true"
end
