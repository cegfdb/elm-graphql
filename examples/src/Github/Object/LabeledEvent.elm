-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.LabeledEvent exposing (actor, createdAt, id, label, labelable)

import Github.InputObject
import Github.Interface
import Github.Object
import Github.Scalar
import Github.ScalarDecoders
import Github.Union
import Graphql.Internal.Builder.Argument as Argument exposing (Argument)
import Graphql.Internal.Builder.Object as Object
import Graphql.Internal.Encode as Encode exposing (Value)
import Graphql.Operation exposing (RootMutation, RootQuery, RootSubscription)
import Graphql.OptionalArgument exposing (OptionalArgument(..))
import Graphql.SelectionSet exposing (SelectionSet)
import Json.Decode as Decode


{-| Identifies the actor who performed the event.
-}
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.LabeledEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.LabeledEvent
createdAt =
    Object.selectionForField "ScalarDecoders.DateTime" "createdAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapCodecs |> .decoderDateTime)


id : SelectionSet Github.ScalarDecoders.Id Github.Object.LabeledEvent
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapCodecs |> .decoderId)


{-| Identifies the label associated with the 'labeled' event.
-}
label : SelectionSet decodesTo Github.Object.Label -> SelectionSet decodesTo Github.Object.LabeledEvent
label object_ =
    Object.selectionForCompositeField "label" [] object_ identity


{-| Identifies the `Labelable` associated with the event.
-}
labelable : SelectionSet decodesTo Github.Interface.Labelable -> SelectionSet decodesTo Github.Object.LabeledEvent
labelable object_ =
    Object.selectionForCompositeField "labelable" [] object_ identity
