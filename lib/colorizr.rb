class String

	def self.colors
		{red: 31, green: 32, yellow: 33, blue: 34, pink: 35, light_blue: 96, white: 39, light_grey: 37, black: 30}
	end
	
	def self.sample_colors
		self.colors.each do |key, value|
			puts "This is #{key.to_s.send(key.to_s)}"
		end
	end

	def self.create_colors
		self.colors.each do |key, value|
			self.send(:define_method, "#{key}") do
				"\e[#{value}m#{self}\e[0m"
			end
		end
	end

end
