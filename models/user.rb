class User < ActiveRecord::Base
	validates :email, uniqueness: true, format: { with: /[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,64}/ }
    validates :password_digest, length: { minimum: 8 }
    validates :password_digest, presence: true
    
    has_secure_password
        
    end