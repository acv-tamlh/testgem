class Product < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  validates_numericality_of :price, geater_than: 0
end
