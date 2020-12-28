{-
MIT License
Copyright (c) 2020 Jean-Jacques François Reibel
Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:
The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.
THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
-}
import Browser
import Html exposing (Html, div, p, text)
import Html.Attributes exposing (class)

type alias Car =
    { make : String
    , wheels : Int
    , doors : Int
    , cylinders : Int
    }
subaru : Car
subaru = Car "Subaru" 4 4 4
main =
  
  div []
    [ p [] [ text ("Make: " ++ subaru.make)]
    , p [] [ text ("Wheels: " ++ String.fromInt subaru.wheels)]
    , p [] [ text ("Doors: " ++ String.fromInt subaru.doors)]
    , p [ ] [ text ("Cylinders: " ++ String.fromInt subaru.cylinders)]
    
    , p [] [ text "Elm 'classes' use records, which are static."]
    , p [] [ text "To change the field of an object, an entire new record must be created."]
    ]