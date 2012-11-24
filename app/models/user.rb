class User < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :email,
                  :gender, :bio


  def display_gender
    if gender == "m"
      return "Male"
    else
      return "Female"
    end
  end
  
  def short_bio
    if bio.mb_chars.length < 20
      return bio
    else
      return bio.mb_chars.slice(0..20).to_s + "..."
    end
  end
end


