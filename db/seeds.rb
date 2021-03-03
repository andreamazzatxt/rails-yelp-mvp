
Restaurant.destroy_all
puts 'Start Seeding'
one = {
  name: 'MacDonald',
  address: 'Milan',
  phone_number: '+39-00000000',
  category: Restaurant::TYPES.sample
}
two = {
  name: 'BurgerKing',
  address: 'Rome',
  phone_number: '+39-11111111',
  category: Restaurant::TYPES.sample
}
three = {
  name: 'Sushii',
  address: 'Florence',
  phone_number: '+39-5555555555',
  category: Restaurant::TYPES.sample
}
four = {
  name: 'KFC',
  address: 'Naples',
  phone_number: '+39-22222222',
  category: Restaurant::TYPES.sample
}
five = {
  name: 'Wendy',
  address: 'Genova',
  phone_number: '+39-33333',
  category: Restaurant::TYPES.sample
}

[one, two, three, four, five].each do |data|
  Restaurant.create(data)
end
puts 'Complete!!'
