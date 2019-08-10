class Post < ActiveRecord::Base
    validates :title, presence: true
    validates :title, exclusion: {in: ["True Facts"]}
    validates :content, length: {minimum: 250}
    validates :summary, length: {maximum: 250}
    validates :category, inclusion: {in: ["Fiction", "Non-Fiction"]}
end
