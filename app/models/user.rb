class User < ApplicationRecord
 has_secure_password;
 validtates :username, uniqueness: true, presence: true;
end
