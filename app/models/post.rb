class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments
	validate :category, :inclusion => { :in => ["한식","일식","중식","양식"]}
end
