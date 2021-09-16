; functions
(left_assignment
  name: (identifier)
  value: (function_definition (_)? @function.inner)) @function.outer

(equals_assignment
  name: (identifier)
  value: (function_definition (_)? @function.inner)) @function.outer

(super_assignment
  name: (identifier)
  value: (function_definition (_)? @function.inner)) @function.outer

; loops
(for
  (_)? @loop.inner) @loop.outer
(while
  (_)? @loop.inner) @loop.outer
(repeat
  (_)? @loop.inner) @loop.outer

; conditionals
(if
  consequence: (_)? @conditional.inner
  alternative: (_)? @conditional.inner
  ) @conditional.outer

(if
  condition: (_) @conditional.inner)

; calls
(call) @call.outer
(call (_) @call.inner)

; blocks
; TODO(jolars): The blocks object from the grammar does not seem to work

; parameters
; TODO(jolars): Need 'parameter' nodes in grammar first

; arguments
; TODO(jolars): Need 'argument' nodes in grammar first
