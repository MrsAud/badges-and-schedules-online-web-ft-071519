require 'pry'

def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  badges = []
  attendees.each do |name|
    badges << badge_maker(name)
  end
  badges
end

def assign_rooms(attendees)
  assignments = {}
  attendees.each_with_index do |name, index|
    assignments[name] = index + 1
  end
  assignments.each do |name, room|
    puts "Hello, #{name}! You'll be assigned to room #{room}!"
  end
end