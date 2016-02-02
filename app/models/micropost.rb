class Micropost < ActiveRecord::Base
  belongs_to :user

  # validates that the maximum length of the comments is 140 characters
  # and that the minimum input is 1 character (cannot be empty)
  validates :content, length: { maximum: 140 }, presence: true
end
