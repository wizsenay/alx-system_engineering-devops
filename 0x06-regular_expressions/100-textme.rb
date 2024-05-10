#!/usr/bin/env ruby
puts ARGV[0].scan(/(?<=to:|from:|flags:)(.*?)(?=\])/).join(',')
