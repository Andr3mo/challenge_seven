class Customer < ApplicationRecord
  validates :full_name, :phone_number, presence: true
  belongs_to :province
end
