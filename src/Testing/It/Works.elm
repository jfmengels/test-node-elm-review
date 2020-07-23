module Testing.It.Works exposing (rule)

{-|

@docs rule

-}

import Review.Rule as Rule exposing (Error, Rule)


{-| This is just a dummy rule, to make sure that elm-review works.

    config =
        [ Testing.It.Works.rule
        ]


## When (not) to enable this rule

Don't.

-}
rule : Rule
rule =
    Rule.newModuleRuleSchema "Testing.It.Works" ()
        |> Rule.withSimpleModuleDefinitionVisitor moduleDefinitionVisitor
        |> Rule.fromModuleRuleSchema


moduleDefinitionVisitor : anything -> List (Error {})
moduleDefinitionVisitor _ =
    [ Rule.error
        { message = "It works!"
        , details = [ "Good job! You have successfully run elm-review." ]
        }
        { start = { row = 1, column = 1 }, end = { row = 1, column = 7 } }
    ]
