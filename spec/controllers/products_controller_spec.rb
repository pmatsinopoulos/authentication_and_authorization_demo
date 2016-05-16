require 'rails_helper'

describe ProductsController do
  it "x" do
    feature "#{Rails.root}/spec/features/products/new.feature"
  end

  step(/I try to access the new product page/) do
    visit new_product_path
  end

  step(/I am being redirected to the sign in page/) do
    expect(current_path).to eq(new_user_session_path)
  end

  step(/I am a signed up user :email$/) do |email|
    password = '12345678'
    @user = User.create!(email: email, password: password, password_confirmation: password)
  end

  step(/I am not signed in$/) do
    visit destroy_user_session_path
  end

  step(/I am signed in/) do
    visit new_users_session_path
  end

end
