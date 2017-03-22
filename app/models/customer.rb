class Customer < ApplicationRecord
  belongs_to :province
  validates :full_name, presence: true, length: {minimum: 2}
end
