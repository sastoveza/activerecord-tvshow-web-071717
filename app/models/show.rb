class Show < ActiveRecord::Base

	def self.highest_rating
		maximum("rating")
	end

	def self.most_popular_show
		rate = self.highest_rating
		self.find_by_rating(rate)
	end

	def self.lowest_rating
		minimum("rating")
	end

	def self.ratings_sum
		self.sum("rating")
	end

	def self.popular_shows
		self.where("rating > 5")
	end

	def self.shows_by_alphabetical_order
		self.order(:name)
	end

	def self.least_popular_show
		rate = self.lowest_rating
		self.find_by_rating(rate)
	end
end