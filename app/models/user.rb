class User < ActiveRecord::Base
  has_many :posts, dependent: :destroy

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible :name, :avatar, :email, :password, :password_confirmation, :remember_me

  mount_uploader :avatar, UserAvatarUploader
end
