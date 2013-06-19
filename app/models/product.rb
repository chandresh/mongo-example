class Product
  include Mongoid::Document
  field :name, type: String
  include Mongoid::Slug
  include Mongoid::Paperclip

  has_mongoid_attached_file :image

  slug :name

  has_and_belongs_to_many :categories

end
