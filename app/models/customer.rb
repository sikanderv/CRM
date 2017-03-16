class Customer < ApplicationRecord
  validates :full_name, presence: true, length: {minimum: 2}
end
