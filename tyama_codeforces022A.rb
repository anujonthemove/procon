#!/usr/bin/ruby
gets;puts gets.split.map(&:to_i).uniq.sort[1]||:NO