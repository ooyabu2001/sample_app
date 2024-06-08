class List < ApplicationRecord
 has_many_attached :images

  validates :title ,presence: true
  validates :body , presence: true
  validates :image , presence: true


end
