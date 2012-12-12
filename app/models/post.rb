class Post < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  attr_accessible :body, :image

  validates :body, presence: true

  mount_uploader :image, PostImageUploader
end
