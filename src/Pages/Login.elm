module Pages.Login exposing (Model, Msg, page)

import ElmLand.Page exposing (Page)
import Html exposing (..)
import Html.Attributes exposing (..)
import View exposing (View)


page : Page Model Msg
page =
    ElmLand.Page.element
        { init = init
        , update = update
        , subscriptions = subscriptions
        , view = view
        }



-- INIT


type alias Model =
    {}


init : ( Model, Cmd Msg )
init =
    ( {}
    , Cmd.none
    )



-- UPDATE


type Msg
    = ExampleMsgReplaceMe


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    case msg of
        ExampleMsgReplaceMe ->
            ( model
            , Cmd.none
            )



-- SUBSCRIPTIONS


subscriptions : Model -> Sub Msg
subscriptions model =
    Sub.none



-- VIEW


view : Model -> View Msg
view model =
    { title = "Pages.Login"
    , body = [ div [ class "container" ] [ text "/login" ] ]
    }
