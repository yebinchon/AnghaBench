
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int TupleTableSlot ;
struct TYPE_8__ {scalar_t__ state; scalar_t__ subslot_time; scalar_t__ gapfill_start; scalar_t__ next_timestamp; scalar_t__ gapfill_period; scalar_t__ gapfill_end; int subslot; int groups_initialized; scalar_t__ multigroup; } ;
typedef TYPE_1__ GapFillState ;
typedef int CustomScanState ;


 int Assert (int) ;
 scalar_t__ FETCHED_LAST ;
 scalar_t__ FETCHED_NEXT_GROUP ;
 scalar_t__ FETCHED_NONE ;
 scalar_t__ FETCHED_ONE ;
 int * gapfill_fetch_next_tuple (TYPE_1__*) ;
 int * gapfill_state_gaptuple_create (TYPE_1__*,scalar_t__) ;
 scalar_t__ gapfill_state_is_new_group (TYPE_1__*,int *) ;
 int gapfill_state_reset_group (TYPE_1__*,int ) ;
 int * gapfill_state_return_subplan_slot (TYPE_1__*) ;
 int gapfill_state_set_next (TYPE_1__*,int *) ;

__attribute__((used)) static TupleTableSlot *
gapfill_exec(CustomScanState *node)
{
 GapFillState *state = (GapFillState *) node;
 TupleTableSlot *slot = ((void*)0);

 while (1)
 {

  if (FETCHED_NONE == state->state)
  {
   slot = gapfill_fetch_next_tuple(state);
   if (slot)
   {
    if (state->multigroup && gapfill_state_is_new_group(state, slot))
     state->state = FETCHED_NEXT_GROUP;
    else
     state->state = FETCHED_ONE;

    gapfill_state_set_next(state, slot);
   }
   else
   {





    if (state->multigroup && !state->groups_initialized)
     return ((void*)0);
    else
     state->state = FETCHED_LAST;
   }
  }


  if (FETCHED_ONE == state->state && state->subslot_time < state->gapfill_start)
  {
   state->state = FETCHED_NONE;
   return gapfill_state_return_subplan_slot(state);
  }


  if (FETCHED_ONE == state->state && state->subslot_time == state->next_timestamp)
  {
   state->state = FETCHED_NONE;
   state->next_timestamp += state->gapfill_period;
   return gapfill_state_return_subplan_slot(state);
  }


  if (state->next_timestamp < state->gapfill_end)
  {
   Assert(state->state != FETCHED_NONE);
   slot = gapfill_state_gaptuple_create(state, state->next_timestamp);
   state->next_timestamp += state->gapfill_period;
   return slot;
  }


  if (FETCHED_ONE == state->state)
  {
   state->state = FETCHED_NONE;
   return gapfill_state_return_subplan_slot(state);
  }




  if (FETCHED_NEXT_GROUP == state->state)
  {
   state->state = FETCHED_ONE;
   state->next_timestamp = state->gapfill_start;
   gapfill_state_reset_group(state, state->subslot);
   continue;
  }

  return ((void*)0);
 }
}
