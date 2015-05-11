class User < ActiveRecord::Base
  before_save :validate_signup
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable

private
def validate_signup
  enable_confirmation = EnableDisableConfirmation.find 1
  self.skip_confirmation! if enable_confirmation
end


end
