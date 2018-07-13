require_relative 'bike'

class DockingStation
	attr_reader :bike

	def release_bike
		fail 'No bikes are available' unless @bike
		@bike
	end

	def dock(bike)
		@bike = bike
	end

end

#when you create a bike object, this does not exist as a "@bike" 
#until it is passed through the dock method