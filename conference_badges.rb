# should return a formatted badge
def badge_maker(name)
  "Hello, my name is #{name}."
end

# should return a list of badge messages
def batch_badge_creator(attendees)
  badge_messages = Array.new
  # creates a badge message for each attendee and shovels to the badge_messages array
  attendees.each do |attendee|
     badge_messages << badge_maker(attendee)
  end
  # return list of badge messages
  badges
end

# should return a list of welcome badges and room assignments
def assign_rooms(attendees)
room_number = 0
  attendees.collect do |attendee|
    "Hello, #{attendee}! You'll be assigned to room #{room_number += 1}!"
  end
end

# should puts the list of badges and room assignments
def printer(attendees)
  # use helper method to print a badge message for every attendee on a separate line
  batch_badge_creator(attendees).each do |badge_message|
    puts badge_message
  end
  # use helper method to print a welcome message for every attendee on a separate line
  assign_rooms(attendees).each do |room_assignment_welcome_message|
    puts room_assignment_welcome_message
  end
end
