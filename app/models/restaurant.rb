class Restaurant < ApplicationRecord
  TYPES = %w[chinese italian japanese french belgian].freeze
  has_many :reviews, dependent: :destroy
  validates :name, presence: true
  validates :address, presence: true
  validates :category, inclusion: { in: TYPES }
  before_save :default_values
  def default_values
    self.phone_number = 'n\a' if self.phone_number.nil?
  end
end
