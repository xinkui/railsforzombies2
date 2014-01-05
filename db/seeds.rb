# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Post.delete_all
User.delete_all

getdown = User.create(name: 'getdown', age: 33, male: 'male')
xiaoxin = User.create(name: 'xiaoxin', age: 33, male: 'male')
xiaokui = User.create(name: 'xiaokui', age: 34, male: 'female')
xiaopi = User.create(name: 'xiaopi', age: 7, male: 'female')

5.times{ |i|
  getdownPost = Post.create(user: getdown, title: "text#{i}", content: "content#{i}")
  xiaoxinPost = Post.create(user: xiaoxin, title: "text#{i}", content: "content#{i}")
  xiaokuiPost = Post.create(user: xiaokui, title: "text#{i}", content: "content#{i}")
  xiaopiPost = Post.create(user: xiaopi, title: "text#{i}", content: "content#{i}")
}


