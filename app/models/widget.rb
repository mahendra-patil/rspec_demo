class Widget < ApplicationRecord
  validates :name, uniqueness: true
end
