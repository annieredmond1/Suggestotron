# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)











require 'ffaker' 

Topic.destroy_all

10.times do
	topic_params = Hash.new
	topic_params[:author] = FFaker::Name.first_name
	topic_params[:title] = FFaker::Product
	topic_params[:description] = FFaker::String
	new_topic = Topic.create(topic_params)
end



