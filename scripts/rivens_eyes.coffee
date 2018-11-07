LABEL_MAP = {
  l1: {row: 2, column: 1},
  l2: {row: 3, column: 2},
  l3: {row: 2, column: 3},
  l4: {row: 1, column: 4},
  l5: {row: 3, column: 5},
  r1: {row: 3, column: 6},
  r2: {row: 2, column: 7},
  r3: {row: 1, column: 8},
  r4: {row: 2, column: 9},
  r5: {row: 3, column: 10}
}

NIL = ' '
EYE = '.'
HIT = '#'

SLOT_SIZE = 2
SLOT_WIDTH = SLOT_SIZE
SLOT_HEIGHT = Math.ceil(SLOT_SIZE*0.66)


module.exports = (robot) ->
  robot.hear /eyes:/, (res) ->
    eye_list = res.message.text.substring(5).split(' ').filter((i) => i != '')
    eye_graph = [
      [NIL, NIL, NIL, EYE, NIL, NIL, NIL, EYE, NIL, NIL],
      [EYE, NIL, EYE, NIL, NIL, NIL, EYE, NIL, EYE, NIL],
      [NIL, EYE, NIL, NIL, EYE, EYE, NIL, NIL, NIL, EYE]
    ]

    for eye in eye_list
      value = LABEL_MAP[eye]
      eye_graph[value.row-1][value.column-1] = HIT

    message = '\n'
    for i in [0...3*SLOT_HEIGHT]
      for j in [0...10*SLOT_WIDTH]
        message += eye_graph[Math.floor(i/SLOT_HEIGHT)][Math.floor(j/SLOT_WIDTH)]
      message += '\n'
    res.send message

