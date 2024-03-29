class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :tweets
  has_many :comments
  validates :nickname, presence: true, length: { maximum: 6 }
  validates :email, uniqueness: true
  validates :password, presence: true, length: { minimum: 5 }
  validates :password_confirmation, presence: true
end
