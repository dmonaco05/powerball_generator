# powerball_generator
# random powerball number generator
# generates a set of numbers for the powerball lottery game
# if you dont know how to run a ruby file, simply copy/paste this into  https://repl.it/    (choose ruby)

# 5x drawing from pool of 69
# 1x drawing from pool of 26


    balls = []
    pball = []
    results = []
    
    (1..69).each do |num|
        balls << num
        pball << num if num < 27
    end
    
    5.times do
        #simulate balls bouncing around in bowl
        balls.shuffle!
        #removing the ball that is chosen
        results << balls.pop
    end
    
    pball.shuffle!
    results.sort!
    
    puts "balls: #{results}"
    puts "powerball: #{pball.first}"
