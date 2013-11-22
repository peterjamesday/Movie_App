class Movie < ActiveRecord::Base
	def self.search_for( query )
	 Movie.where("name LIKE :query or description LIKE :query", 
								:query => "%#{ query }%")
	end
end
