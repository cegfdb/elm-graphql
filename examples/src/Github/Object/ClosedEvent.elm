-- Do not manually edit this file, it was auto-generated by dillonkearns/elm-graphql
-- https://github.com/dillonkearns/elm-graphql


module Github.Object.ClosedEvent exposing (actor, closable, closer, commit, createdAt, id)

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
actor : SelectionSet decodesTo Github.Interface.Actor -> SelectionSet (Maybe decodesTo) Github.Object.ClosedEvent
actor object_ =
    Object.selectionForCompositeField "actor" [] object_ (identity >> Decode.nullable)


{-| Object that was closed.
-}
closable : SelectionSet decodesTo Github.Interface.Closable -> SelectionSet decodesTo Github.Object.ClosedEvent
closable object_ =
    Object.selectionForCompositeField "closable" [] object_ identity


{-| Object which triggered the creation of this event.
-}
closer : SelectionSet decodesTo Github.Union.Closer -> SelectionSet (Maybe decodesTo) Github.Object.ClosedEvent
closer object_ =
    Object.selectionForCompositeField "closer" [] object_ (identity >> Decode.nullable)


{-| Identifies the commit associated with the 'closed' event.
-}
commit : SelectionSet decodesTo Github.Object.Commit -> SelectionSet (Maybe decodesTo) Github.Object.ClosedEvent
commit object_ =
    Object.selectionForCompositeField "commit" [] object_ (identity >> Decode.nullable)


{-| Identifies the date and time when the object was created.
-}
createdAt : SelectionSet Github.ScalarDecoders.DateTime Github.Object.ClosedEvent
createdAt =
    Object.selectionForField "ScalarDecoders.DateTime" "createdAt" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapCodecs |> .decoderDateTime)


id : SelectionSet Github.ScalarDecoders.Id Github.Object.ClosedEvent
id =
    Object.selectionForField "ScalarDecoders.Id" "id" [] (Github.ScalarDecoders.decoders |> Github.Scalar.unwrapCodecs |> .decoderId)
