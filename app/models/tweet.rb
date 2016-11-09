class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  validates :message, presence: true, length: {maximum: 140, too_long: "This is too long"}
end
