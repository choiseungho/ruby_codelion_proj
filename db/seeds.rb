# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
categories = ["한식", "일식", "중식", "양식"]

categories.each do |category|
    0.upto(1) do |idx|
        p = Post.new
        p.user_id = idx + 1
        p.category = category
        p.title = "#{category}집#{idx} 이름"
        p.content = "#{category}집#{idx} 설명"
        p.save
    end
end