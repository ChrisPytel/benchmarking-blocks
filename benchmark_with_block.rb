def benchmark
  start_time = Time.now

  thing_to_calculate = yield
  # puts yield;                 # for testing: will print the contents of the incoming block
  end_time = Time.now
  return time_elapsed = end_time - start_time
end
 
# Be careful, printing this will take a veeeeeeeerry long time :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"