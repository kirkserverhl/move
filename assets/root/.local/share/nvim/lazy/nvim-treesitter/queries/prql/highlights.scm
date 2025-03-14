[
  (keyword_from)
  (keyword_filter)
  (keyword_derive)
  (keyword_group)
  (keyword_aggregate)
  (keyword_sort)
  (keyword_take)
  (keyword_window)
  (keyword_join)
  (keyword_select)
  (keyword_append)
  (keyword_remove)
  (keyword_intersect)
  (keyword_rolling)
  (keyword_rows)
  (keyword_expanding)
  (keyword_let)
  (keyword_prql)
  (keyword_from_text)
] @keyword

(keyword_loop) @keyword.repeat

(keyword_case) @keyword.conditional

[
  (literal_string)
  (f_string)
  (s_string)
] @string

(assignment
  alias: (field) @variable.member)

alias: (identifier) @variable.member

(comment) @comment @spell

(function_call
  (identifier) @function.call)

[
  "+"
  "-"
  "*"
  "/"
  "="
  "=="
  "<"
  "<="
  "!="
  ">="
  ">"
  "&&"
  "||"
  "//"
  "~="
  (bang)
] @operator

[
  "("
  ")"
  "{"
  "}"
] @punctuation.bracket

[
  ","
  "."
  "->"
] @punctuation.delimiter

(integer) @number

(decimal_number) @number.float

[
  (keyword_min)
  (keyword_max)
  (keyword_count)
  (keyword_count_distinct)
  (keyword_average)
  (keyword_avg)
  (keyword_sum)
  (keyword_stddev)
  (keyword_count)
  (keyword_rank)
] @function

[
  (keyword_side)
  (keyword_format)
] @attribute

[
  (keyword_version)
  (keyword_target)
] @keyword.modifier

(target) @function.builtin

[
  (date)
  (time)
  (timestamp)
] @string.special

[
  (keyword_left)
  (keyword_inner)
  (keyword_right)
  (keyword_full)
  (keyword_csv)
  (keyword_json)
] @function.method.call

[
  (keyword_true)
  (keyword_false)
] @boolean

(function_definition
  (keyword_let)
  name: (identifier) @function)

(parameter
  (identifier) @variable.parameter)

(variable
  (keyword_let)
  name: (identifier) @constant)

(keyword_null) @constant.builtin
