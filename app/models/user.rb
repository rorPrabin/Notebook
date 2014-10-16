class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable

  # def create
  # 	@user = User.new(params[:user])
  # 	@user.first_name = params([:full_name]).split(' ', 2).first
  # 	@user.last_name = params([:full_name]).split(' ', 2).last
  # 	@user.save
  # end
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :trackable, :validatable

  # attr_accessible :last_name, :first_name
  # belongs_to :user
  #  Setup accessible attributes for our model
        # attr_accessible :first_name, :last_name
  # def last_name

  # end

  # def first_name

  # end
end 