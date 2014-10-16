require 'rails_helper'
require 'spec_helper'

RSpec.describe User, :type => :model do
	it "order by last name" do
		sau = User.create!(first_name: "Saujan", last_name: "Sau")
		mahaju = User.create!(first_name: "Arpan", last_name: "Mahaju")
		expect(User.order_by_last_name).to eq([sau, mahaju])
	end
end
