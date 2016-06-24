class Post < ActiveRecord::Base
	has_many :comment
	validates :title, presence: true, length: { minimum: 5}
	validates :body, presence: true
end
