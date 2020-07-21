class Author < ActiveRecord::Base
    has_many :posts

    #validate email is unique
    validates :email, uniqueness: true
    #name cannot be blank!  
    validates :name, presence: true

end
