class Logger
	def initialize
		@f = File.open 'log.txt', 'a'
	end

	@@x = nil

	def self.instance
		if @@x == nil
			@@x = Logger.new
		end

		return @@x
	end

	def self.say_something
		puts "haha"
    end

    def log_something wat
    	
    	@f.puts wat
    	
    end
    private_class_method :new
end
 
 Logger.say_something
 Logger.instance.log_something 'perviy vizov'
  Logger.instance.log_something 'drugoy vizov'

 logger = Logger.new
 logger.log_something 'hey!'
 