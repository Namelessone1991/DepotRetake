class Product < ApplicationRecord
     
    validates :title, :description, :image_url, presence: true


    #This helper validates that your attributes have only numeric values. 
    #By default, it will match an optional sign followed by an integral or floating point number. 
    #To specify that only integral numbers 
   
    validates :price, numericality: {greater_than_or_equal_to: 0.01}    

    validates :title, uniqueness: true


    validates :image_url, allow_blank: true, format: {
              with: %r{\.(gif|jpg|png)\Z}i,
              message: 'must be a URL for GIF, JPG or PNG image.'
              }


end
