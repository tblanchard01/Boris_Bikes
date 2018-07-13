require 'docking_station'

describe DockingStation do
	describe '#release_bike' do
		it 'releases a bike' do
			bike = Bike.new
			# subject.dock(bike)
			expect(subject.release_bike).to eq bike
		end

		it 'raises an error when there are no bikes available' do
			expect{subject.release_bike}.to raise_error 'No bikes are available'
		end
	end

	it 'shows a docked bike' do
		expect(subject).to respond_to :bike
	end

	it 'docks bike' do
		expect(subject).to respond_to(:dock).with(1).argument
	end
end
