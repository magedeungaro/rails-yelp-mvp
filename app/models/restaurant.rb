class Restaurant < ApplicationRecord
  has_many :reviews, dependent: :destroy

  validates :address, presence: true
  validates :name, presence: true
  validates :category, inclusion: { in: :categories_list }

  def self.categories_list
    %w[chinese italian japanese french belgian]
  end

  private

  def categories_list
    self.class.categories_list
  end
end
