class Post < ActiveRecord::Base
    belongs_to :author

    #category is either 'Fiction' or 'Non-Fiction'
    validates :category, inclusion: { in: %w[Fiction Non-Fiction] }
    #content < 100 characters
    validates :content, length: { minimum: 100}
    #post must have a title
    validates :title, presence: true
end
