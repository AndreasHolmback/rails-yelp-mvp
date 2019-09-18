class Review < ApplicationRecord
  belongs_to :restaurant

  # validates :name, uniqueness: true, presence: true
  validates :content, :rating, presence: true
  validates :rating, inclusion: { in: [0, 1, 2, 3, 4, 5] }
  validates :rating, numericality: { only_integer: true }
end



#When a restaurant is destroyed, all of its reviews should be destroyed as well.
