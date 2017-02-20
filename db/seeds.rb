# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.email = "admin@gmail.com"

u.password = "123456"

u.password_confirmation = "123456"

u.is_admin = true

u.save

puts "Created admin account"

products = [{title:"1号造型师作品",description:"擅长女装",image_path: "#{Rails.root}/app/assets/images/woman.jpg"},
            {title:"2号造型师作品",description:"擅长男装",image_path: "#{Rails.root}/app/assets/images/men.jpeg"},
            {title:"3号造型师作品",description:"业界大牛",image_path: "#{Rails.root}/app/assets/images/niu.jpg"},
            {title:"4号造型师作品",description:"极具美感",image_path: "#{Rails.root}/app/assets/images/beauty.jpg"}
          ]

p1 = Product.create([title:products[0][:title],description:products[0][:description],quantity:99,price:400,image:open(products[0][:image_path])])
p2 = Product.create([title:products[1][:title],description:products[1][:description],quantity:99,price:600,image:open(products[1][:image_path])])
p3 = Product.create([title:products[2][:title],description:products[2][:description],quantity:99,price:500,image:open(products[2][:image_path])])
p4 = Product.create([title:products[3][:title],description:products[3][:description],quantity:99,price:700,image:open(products[3][:image_path])])


puts "products created."
