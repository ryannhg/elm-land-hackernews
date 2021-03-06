module Layouts.Navbar exposing (layout)

import Html exposing (..)
import Html.Attributes exposing (..)
import View exposing (View)


layout : { page : View msg } -> View msg
layout { page } =
    { title = page.title
    , body =
        [ viewNavbar
        , div [ class "container" ] page.body
        ]
    }


viewNavbar : Html msg
viewNavbar =
    div [ class "navbar" ]
        [ div [ class "navbar__container container" ]
            [ div [ class "navbar__left row center-y" ]
                [ a [ class "navbar__logo", href "/" ]
                    [ text "HackerNews" ]
                , a [ href "/" ] [ text "top" ]
                ]
            ]
        ]
