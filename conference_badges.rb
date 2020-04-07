# Write your code here.

def badge_maker name
  "Hello, my name is #{name}."
end

def batch_badge_creator names
  names.map { |n| badge_maker(n) }
end

def assign_rooms names
  output = []
  names.each_with_index {|val, index| output << "Hello, #{val}! You'll be assigned to room #{index + 1}!"}
  output
end

def printer attendees
  badges = batch_badge_creator(attendees)
  badges.each {|b| puts b}
  rm_assigns = assign_rooms(attendees)
  rm_assigns.each {|rm| puts rm }
end
