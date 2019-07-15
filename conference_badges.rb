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
  welcome_message = []
  assignments.each do |name, room|
    welcome_message << "Hello, #{name}! You'll be assigned to room #{room}!"
  end
  welcome_message
end

def printer(attendees)
  attendees.each do |name|
    puts batch_badge_creator(name)
    puts assign_rooms(name)
  end
end