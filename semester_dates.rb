#!/usr/bin/env ruby -wKU

require 'date'

class_days = "MWF"
# class_days = "TR"

days = ["M", "T", "W", "R", "F"]
start_date = Date.new(2014, 1, 12)

weeks = (0..15)

weeks.each do |week|
  week_start_date = start_date + week * 7
  class_days.chars.each do |class_day|
    unless days.index(class_day).nil?
      date_string = (week_start_date + days.index(class_day)).strftime("%-m/%-d")
      puts "#{class_day} #{date_string}"
    end
  end
end