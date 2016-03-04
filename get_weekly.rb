require "date"

@exec = "";

if Gem::Platform.local.to_s.include? "mingw32"
	@exec = "start"
else 
	@exec = "open"
end

%x[#{@exec} "http://coub.com/weekly/#{Date.today.strftime("%Y")}/#{Date.today.strftime("%W").to_i-1}"]
