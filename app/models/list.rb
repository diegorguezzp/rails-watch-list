class List < ApplicationRecord
  has_many :bookmarks, dependent: :destroy
  has_many :movies, through: :bookmarks
  has_one_attached :photo
  list = List.new(name:)
  list.valid?
  list.errors.messages
  validates :name, presence: true, uniqueness: true
end
