require("sinatra")
require_relative("flashcards")
require_relative("arabic_flashcards")

enable :sessions

get("/") do
  # Reset the game
  session["score"] = 0
  erb :index
end

get("/game_arabic") do
	session["arabic"] = random_arabicflashcard_name
	if session["score"] == nil
		session["score"] = 0
	end

	# Build my choices array
  @choices = []
  @choices.push(session["arabic"])
  while @choices.count < 3
    new_choice = random_arabicflashcard_name
    if @choices.include?(new_choice)
    else
      @choices.push(new_choice)
    end
  end
  @choices = @choices.shuffle
  erb :game_arabic
end

post("/arabicsub") do
  if params["guess"] == session["arabic"]
    @correct = true
    session["score"] += 1
  else
    @correct = false
  end

  erb :arabicsub
end

get("/game_english") do
  session["cards"] = random_flashcard_name
  if session["score"] == nil
    session["score"] = 0
  end

  # Build my choices array
  @choices = []
  @choices.push(session["cards"])
  while @choices.count < 5
    new_choice = random_flashcard_name
    if @choices.include?(new_choice)
    else
      @choices.push(new_choice)
    end
  end
  @choices = @choices.shuffle
  erb :game_english
end

post("/submission") do
  if params["guess"] == session["cards"]
    @correct = true
    session["score"] += 1
  else
    @correct = false
  end

  erb :submission
end
