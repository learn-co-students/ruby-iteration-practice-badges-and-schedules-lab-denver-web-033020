# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  attendees.map do |attendee|
    "Hello, my name is #{attendee}."
    end
end

def assign_rooms(speakers)
  speaker_rooms = []
  speakers.each_with_index do |speaker, index|
    speaker_rooms << "Hello, #{speaker}! You'll be assigned to room #{index + 1}!"
  end
  speaker_rooms
end

def printer(attendees)
  badges = batch_badge_creator(attendees)
  badges.each do |badge|
    puts badge
  end
  rm_assigns = assign_rooms(attendees)
  rm_assigns.each do |room|
    puts room
  end
end