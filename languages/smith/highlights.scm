[
    (greater)
    (less)
    (equal)
    (add_assign)
    (add)
    (subtract)
    (multiply)
    (divide)
    (dot)
    (negative)
    (pointer)
    (option)
    "="
    "in"
] @operator

[
    (not)
    (in)
    (or)
] @keyword.operator

[
    "fn"
] @keyword.function

[
    "struct"
] @keyword.type

[
    "if"
    "else"
] @keyword.conditional

[
    "for"
] @keyword.repeat

[
    (mut)
    "test"
    "assert"
    "return"
] @keyword

((identifier) @type.builtin
    (#any-of? @type.builtin
        "i8"
        "i32"
        "i64"
        "u8"
        "u32"
        "u64"
        "f32"
        "f64"
        "bool"
        "str"))

(integer_literal) @number

(float_literal) @number

(string_literal) @string

(boolean_literal) @boolean

(identifier) @variable

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

[
  ","
  ":"
] @punctuation.delimiter

[
  ".."
] @punctuation.special

(function_call
    function: (expression
        (identifier) @function.call))

(variable_definition
    pattern: (pattern_expression
        (identifier) @function)
    value: (expression
        (function_definition)))

(variable_definition
    pattern: (pattern_expression
        (identifier) @type.definition)
    value: (expression
        (struct_definition)))

(variable_definition
    type: (expression
        (identifier) @type))

(struct_field
    type: (expression
        (identifier) @type))

(function_parameter
    type: (expression
        (identifier) @type))

(function_definition
    return_type: (expression
        (identifier) @type))

(unary_operation
    (array_literal)
    (expression
        (identifier) @type))

(unary_operation
    (option)
    (expression
        (identifier) @type))

(unary_operation
    (pointer)
    (expression
        (identifier) @type))


(binary_operation
    operator: (dot)
    right: (expression
        (identifier) @variable.member))

(comment) @comment @spell
