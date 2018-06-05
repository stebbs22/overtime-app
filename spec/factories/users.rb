FactoryBot.define do
  sequence :email do |n|
    "test#{n}@example.com"
  end

  factory :user do
    first_name 'John'
    last_name 'Smith'
    email "test@test.com"
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end

  factory :admin_user, class: "AdminUser" do
    first_name 'Admin'
    last_name 'User'
    email "admin@user.com"
    password "asdfasdf"
    password_confirmation "asdfasdf"
  end
end