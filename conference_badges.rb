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
  # create array to hold attendee/room number key/value pairs
  room_assignments = Array.new
  # create an array to hold welcome message strings generated from the room_assignments array
  room_assignment_welcome_messages = Array.new
  # iterate through array of attendees to create an array of hashes pairing attendee with a room number
  # increment room number for every new attendee, shovel a hash attendee/room pair to room_assignments
  room_number = 0
  attendees.each do |attendee|
    room_number += 1
    room_assignments << { attendee => room_number }
  end
  # iterate through room_assignments, iterpolate hash data to shovel welcome messages to array
  room_assignments.each do |rooms|
    rooms.each do |key, value|
      room_assignment_welcome_messages << "Hello, #{key}! You'll be assigned to room #{value}!"
    end
  end
  # implicitly return the array of welcome message strings
  room_assignment_welcome_messages
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
