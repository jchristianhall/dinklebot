# Description:
#   Return a random phrase from dinklebot
#
# Dependencies:
#   None
#
# Configuration:
#   None
#
# Commands:
#   hubot dinklebot
#
# Author:
#   jchristianhall

phrases = [
  "That wizard came from the moon!",
  "Can't we just stay here with the murderous robots?",
  "Don't do that",
  "Just so you know I have no idea what I'm doing.",
  "WE'VE WOKEN THE HIVE!",
  "He's in a tank!",
  "Whether we wanted it or not, we've stepped into a war with the Cabal on Mars. So let's get to taking out their command, one by one. Valus Ta'aurc. From what I can gather, he commands the Siege Dancers from an Imperial Land Tank just outside of Rubicon. He's well protected, but with the right team, we can punch through those defenses, take this beast out, and break their grip on Freehold.",
  "A CELL. FROM THE PRISON OF ELDERS.",
  "http://i0.kym-cdn.com/photos/images/newsfeed/001/009/331/429.png",
  "CABAL AGAIN?"
]

module.exports = (robot) ->
  robot.respond /dinklebot/, (msg) ->
    msg.send msg.random(phrases)

  robot.hear /cabal/, (msg) ->
    msg.send "CABAL AGAIN?"
