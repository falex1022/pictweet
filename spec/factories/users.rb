FactoryBot.define do

  factory :user do
    nickname                {"abe"}
    password                {"666666"}
    password_confirmation   {"666666"}
    sequence(:email) {Faker::Internet.email}
  end
end