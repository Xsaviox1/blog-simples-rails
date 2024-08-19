class Post < ApplicationRecord
    validates :title,:description, presence: true
    validates :title, length: {minimum: 5}

    before_save do
        self.title = self.title + " - Sávio"
    end
end
