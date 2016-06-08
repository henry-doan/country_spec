class Country < ActiveRecord::Base
	validates_presence_of :name, :population, :language

	def name_language
		"#{name} has a primary language of: #{language}"
	end

	def country_size
		foramtted_pop = population.to_i
		if(foramtted_pop >= 1000000)
			"Large"
		elsif (foramtted_pop > 500000)
			'Medium'
		else
			"Small"
		end
	end
end
