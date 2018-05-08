class User < ApplicationRecord
  validates :username, presence: true, uniqueness: true
  
  has_many :artworks,
  primary_id: :id,
  foreign_key: :artist_id,
  class_name: :Artwork
  
  has_many :shared_artworks,
  primary_key: :id, 
  foreign_key: :user_id, 
  class_name: :Artwork
end