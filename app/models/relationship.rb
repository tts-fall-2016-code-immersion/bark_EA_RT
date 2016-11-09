class Relationship < ApplicationRecord

  belongs_to :user
  belongs_to :friend, class_name: "User"

  # Create an association to friend
# provide a class_name of "User"
end
