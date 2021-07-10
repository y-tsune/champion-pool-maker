module Main exposing (..)
-- Press buttons to increment and decrement a counter.
--
-- Read how it works:
--   https://guide.elm-lang.org/architecture/buttons.html
--
import Browser
import Html exposing (Html, button, div, text)
import Html.Events exposing (onClick)


-- MAIN

main =
  Browser.sandbox { init = init, update = update, view = view }

-- MODEL


type alias Model =
    {
        role : String
    }


init : Model
init = Model ""

-- UPDATE
type Msg
  = SelectRole String

update : Msg -> Model -> Model
update msg model =
  case msg of
    SelectRole role_ -> { model |
                             role = role_
                       }

-- VIEW

view : Model -> Html Msg
view model =
  div []
    [
     button [ onClick (SelectRole "TOP") ] [ text "TOP" ]
    ,button [ onClick (SelectRole "JUNGLE") ] [ text "JUNGLE" ]
    ,button [ onClick (SelectRole "MID") ] [ text "MID" ]
    ,button [ onClick (SelectRole "ADC") ] [ text "ADC" ]
    ,button [ onClick (SelectRole "SUP") ] [ text "SUP" ]
    ,text model.role
    ]
