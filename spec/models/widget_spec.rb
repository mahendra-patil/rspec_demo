require 'rails_helper'

RSpec.describe Widget, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  before(:all) do
    @widget1 = create(:widget)
  end

  it "is valid with valid attributes" do
    expect(@widget1).to be_valid
  end

  # it "has a unique name" do
  #   widget2 = build(:widget, email: "bob@gmail.com")
  #   expect(widget2).to_not be_valid
  # end

  it "has a unique name" do
    widget2 = build(:widget, name: "Bob")
    expect(widget2).to be_valid
  end

  # it "is not valid without a password" do
  #   widget2 = build(:widget, password: nil)
  #   expect(widget2).to_not be_valid
  # end

  it "is not valid without a name" do
    widget2 = build(:widget, name: nil)
    expect(widget2).to_not be_valid
  end

  # it "is not valid without an email" do
  #   widget2 = build(:widget, email: nil)
  #   expect(widget2).to_not be_valid
  # end
end
