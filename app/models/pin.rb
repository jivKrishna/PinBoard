class Pin < ApplicationRecord
  acts_as_votable
  belongs_to :user
  validates :title, :description, presence: true

  has_attached_file :image, styles: { medium: "400x400>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
