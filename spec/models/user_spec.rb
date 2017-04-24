require 'rails_helper'

RSpec.describe User, type: :model do

  describe "creation" do
    before do
      @user = User.create(email: "test@test.com", password: "asdfasdf", password_confirmation: "asdfasdf", mortuary_name: "wing")
    end

    it "can be created" do
      expect(@user).to be_valid
    end

    it "can not be created without mortuary_name" do
      @user.mortuary_name = nil
      expect(@user).to_not be_valid
    end
  end
end
