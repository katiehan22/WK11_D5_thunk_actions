# == Schema Information
#
# Table name: items
#
#  id         :bigint           not null, primary key
#  pokemon_id :bigint
#  name       :string           not null
#  price      :integer          not null
#  happiness  :integer          not null
#  image_url  :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Item < ApplicationRecord
    validates :pokemon_id, :name, :price, :happiness, :image_url, presence: true
    validates :name, length: {maximum: 255}
    validates :price, numericality: {greater_than_or_equal_to: 0}
    
end
