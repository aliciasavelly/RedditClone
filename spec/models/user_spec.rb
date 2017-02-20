require 'rails_helper'
require 'spec_helper'

describe User do
  subject(:user) do
    FactoryGirl.build(:user,
    name: "jonathan",
    password: "good_password")
  end

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:password_digest) }
  it { should validate_length_of(:password).is_at_least(6) }
  
  it { should have_many(:subs) }
  it { should have_many(:user_votes) }
  it { should have_many(:comments) }
end
