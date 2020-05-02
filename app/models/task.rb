class Task < ApplicationRecord
  validates :name, presence: true, length: { maximum: 30 }
  validate :validate_name_not_including_conma

  private

  def validate_name_not_including_conma
    errors.add(:name, "にカンマを含めることができません") if name&.include?(",")
  end
end
