class Api::FortunePagesController < ApplicationController
  def fortune_action
    fortunes = [
                  "You're really rich but you ALWAYS have a butt rash",
                  "You're poor but have a great smile",
                  "You're going to live a long healthy life filled with love and happiness but you have to mow the grass everyday"
                ]
    @fortune = fortunes[rand(fortunes.length)]
    render 'fortune_view.json.jb'

  end

  def random_action
    num = (1..60).to_a
    @random = []
    6.times do
      @random << num.shuffle.pop
      #or
      #@random << num.sample(6)
    end

    render 'random_view.json.jb'

  end

  def refresh_action
    @count = 0
    @count += 1 
    render 'refresh_view.json.jb'
  end

  def bottles_action
    i = 99
    @bottles = []

    while i > 0
      song = "#{i} bottles of beer on the wall, #{i} bottles of beer. Take one down, pass it around. #{i -1 } bottles of beer on the wall"
      @bottles << song
      i -= 1
    end

    render 'bottles_view.json.jb'
  end



end
