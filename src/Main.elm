module Main exposing (..)

import Browser
import Browser.Navigation
import Html exposing (..)
import Url


main =
    Browser.application
        { init = init
        , view = view
        , update = update
        , subscriptions = \_ -> Sub.none
        , onUrlRequest = \_ -> NoOp
        , onUrlChange = \_ -> NoOp
        }


type Msg
    = NoOp


type alias Model =
    {}



-- INIT


init : () -> Url.Url -> Browser.Navigation.Key -> ( Model, Cmd Msg )
init _ _ _ =
    ( {}, Cmd.none )



-- UPDATE


update : Msg -> Model -> ( Model, Cmd Msg )
update msg model =
    ( {}, Cmd.none )



-- VIEW


view : Model -> Browser.Document Msg
view model =
    { title = "Test App"
    , body = [ h1 [] [ text "we are live!" ] ]
    }
