6.times do
  user_first_name = Faker::Name.first_name

  user = User.create!(
    first_name: user_first_name,
    last_name: Faker::Name.last_name,
    email: Faker::Internet.safe_email(user_first_name),
    password: 'asdfasdf',
    password_confirmation: 'asdfasdf',
    organization: 'Faker_Seed',
  )
end


# consistent users for development
User.first.update({
  first_name: "Hethe",
  last_name: "Berg",
  email: "asdf@asdf.com",
  password: 'asdfasdf',
  password_confirmation: 'asdfasdf',
  organization: 'Faker_Seed',
  admin: true
})

user_last = User.last.update({
  email: "growthcode@gmail.com",
  password: "asdfasdf"
})
