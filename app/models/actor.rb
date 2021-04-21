class Actor < ActiveRecord::Base
  has_many :characters 
  has_many :shows, through: :characters
  
  def full_name
    fullname = (self.first_name + " " + self.last_name)
  end 
  
  def list_roles 
    self.characters do |character|
     puts character.name + " - " + character.show
    end 
  end 
end