class Product < ApplicationRecord
  belongs_to :category
  validates :title, presence: true
  validates_numericality_of :price, geater_than: 0
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
