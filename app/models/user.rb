class User < ApplicationRecord
	before_save {self.email = email.downcase}
	validates :name, 
		presence: true,
		length:{in: 2..50}
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+\.[a-z\d\-]+\.ac+\.jp+\z/i
	validates :email, 
		presence: true,
		length:{maximum: 255},
		format:{with: VALID_EMAIL_REGEX},
		uniqueness: {case_sensitive: false}
	has_secure_password
	validates :password,
		presence: true,
		length: {minimum:6}
end