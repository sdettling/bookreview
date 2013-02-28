class Review < ActiveRecord::Base
  attr_accessible :book_id, :description, :title

  belongs_to :book
end
