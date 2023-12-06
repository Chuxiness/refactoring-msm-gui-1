# == Schema Information
#
# Table name: movies
#
#  id          :integer          not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord
  def director
    #return "Hello!"
    the_id = self.director_id
    matching_director = Director.where({ :id => the_id }).at(0)
    return matching_director
  end
end
