class Strain < ApplicationRecord
    has_many :wine_strains
    has_many :wines, through: :wine_strains, dependent: :destroy


    def availability
        if available == true
            "Yes"
        else
            "No"
        end
    end


end
