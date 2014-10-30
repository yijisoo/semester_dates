#!/usr/bin/env ruby -wKU

require 'date'

days = ["M", "T", "W", "R", "F"]

# You have to adjust the following lines
start_date = Date.new(2014, 1, 12) # Starting date of your semester. Should be Monday.
weeks = (0..15) # A total of 16 weeks
class_days = "MWF" # Monday, Wednesday, Friday classes
# class_days = "TR" # Tuesday and thuRsday classes

weeks.each do |week|
  week_start_date = start_date + week * 7
  class_days.chars.each do |class_day|
    unless days.index(class_day).nil?
      date_string = (week_start_date + days.index(class_day)).strftime("%-m/%-d")
      puts "#{class_day} #{date_string}"
    end
  end
end
