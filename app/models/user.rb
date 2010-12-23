class User < ActiveRecord::Base
  attr_accessible :username, :email, :password, :password_confirmation

  acts_as_authentic do |c|
    c.crypto_provider = Authlogic::CryptoProviders::BCrypt
  end
end
