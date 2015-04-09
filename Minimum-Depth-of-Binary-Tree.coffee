minDepth = (root) ->
  if root is null
    return 0
  if root.left is null and root.right is null
    return 1
  left = if root.left then minDepth(root.left) else Number.MAX_VALUE
  right = if root.right then minDepth(root.right) else Number.MAX_VALUE
  return Math.min(left, right) + 1
