class User < ActiveRecord::Base

	#attr_accessible :email, :password, :password_confirmation, :remember_me, :name

	#validates :name, presence: true

  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         #:recoverable, 
         :rememberable, :trackable, :validatable

         has_many :pins, :dependent => :destroy
end
