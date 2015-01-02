class Recipe < ActiveRecord::Base
  belongs_to :food_type
  belongs_to :food_preference
  belongs_to :cuisine
  #DIFFICULTY=%w(Easy Medium Hard)
  DIFFICULTY=["Easy","Medium","Hard"]

  scope :food_type_of, ->(food_type){ where("food_type_id = ?", food_type)} 
  scope :food_preference_of, ->(food_preference){where("food_preference_id = ?", food_preference)}
  scope :cuisine_of, ->(cuisine){where("cuisine_id = ?", cuisine)}

end
