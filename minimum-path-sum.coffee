minPathSum = (grid) ->
  row = grid.length
  col = grid[0].length
  value = ((0 for [0...col]) for [0...row])
  sum = 0
  for ele, i in grid[0]
    sum += ele
    value[0][i] = sum
  sum = 0
  for i in [0...row]
    sum += grid[i][0]
    value[i][0] = sum
  for i in [1...row]
    for j in [1...col]
      val = grid[i][j]
      value[i][j] = Math.min(value[i-1][j], value[i][j-1])+val
  value[row-1][col-1]