class ArtworkShare < ApplicationRecord 
  validates :artwork_id, :user_id, presence: true
  validates :artwork_id, uniqueness: {scope: :user_id}, presence: true
  
  belongs_to :viewer,
  primary_key: :id, 
  foreign_key: :user_id,
  class_name: :User 
  
  belongs_to :artwork,
  primary_key: :id, 
  foreign_key: :artwork_id,
  class_name: :Artwork
  
  
  
end