# Goal was to make a scissor paper rock game.

# Rock Paper Scissors
#
# Let's play! You have to return which player won! In case of a draw return Draw!.
#
# Examples:
#
# rps('scissors','paper') // Player 1 won!
# rps('scissors','rock') // Player 2 won!
# rps('paper','paper') // Draw!


# My code:
def rps(p1, p2)
  if p1 == "scissors" && p2 == "paper"
    return "Player 1 won!"
  elsif p1 == "scissors" && p2 == "rock"
    return "Player 2 won!"
  elsif p1 == "scissors" && p2 == "scissors"
    return "Draw!"
  end

  if p1 == "paper" && p2 == "paper"
    return "Draw!"
  elsif p1 == "paper" && p2 == "rock"
    return "Player 1 won!"
  elsif p1 == "paper" && p2 == "scissors"
    return "Player 2 won!"
  end

  if p1 == "rock" && p2 == "paper"
    return "Player 2 won!"
  elsif p1 == "rock" && p2 == "rock"
    return "Draw!"
  elsif p1 == "rock" && p2 == "scissors"
    return "Player 1 won!"
  end

end

# Other users did:
def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end

#Best practice was:
def rps(p1, p2)
  return 'Draw!' if p1 == p2

  result = win_matrix[p1.to_sym][p2.to_sym]

  "Player #{result} won!"
end

def win_matrix
  {
    rock:     { paper: 2, scissors: 1 },
    paper:    { scissors: 2, rock: 1 },
    scissors: { rock: 2, paper: 1 }
  }
end
