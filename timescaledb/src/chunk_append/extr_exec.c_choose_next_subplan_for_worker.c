
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {size_t current; int num_subplans; int filtered_first_partial_plan; int lock; TYPE_1__* pstate; } ;
struct TYPE_5__ {int* finished; int next_plan; } ;
typedef TYPE_1__ ParallelChunkAppendState ;
typedef TYPE_2__ ChunkAppendState ;


 int Assert (int) ;
 int INVALID_SUBPLAN_INDEX ;
 int LWLockAcquire (int ,int ) ;
 int LWLockRelease (int ) ;
 int LW_EXCLUSIVE ;
 int NO_MATCHING_SUBPLANS ;
 void* get_next_subplan (TYPE_2__*,int) ;

__attribute__((used)) static void
choose_next_subplan_for_worker(ChunkAppendState *state)
{
 ParallelChunkAppendState *pstate = state->pstate;
 int next_plan;
 int start;

 LWLockAcquire(state->lock, LW_EXCLUSIVE);


 if (state->current >= 0)
  pstate->finished[state->current] = 1;

 if (pstate->next_plan == INVALID_SUBPLAN_INDEX)
  next_plan = get_next_subplan(state, INVALID_SUBPLAN_INDEX);
 else
  next_plan = pstate->next_plan;

 if (next_plan == NO_MATCHING_SUBPLANS)
 {

  pstate->next_plan = NO_MATCHING_SUBPLANS;
  state->current = NO_MATCHING_SUBPLANS;
  LWLockRelease(state->lock);
  return;
 }

 start = next_plan;


 while (pstate->finished[next_plan])
 {
  next_plan = get_next_subplan(state, next_plan);


  if (next_plan < 0)
   next_plan = get_next_subplan(state, INVALID_SUBPLAN_INDEX);

  if (next_plan == start || next_plan < 0)
  {
   Assert(next_plan >= 0);
   pstate->next_plan = NO_MATCHING_SUBPLANS;
   state->current = NO_MATCHING_SUBPLANS;
   LWLockRelease(state->lock);
   return;
  }
 }

 Assert(next_plan >= 0 && next_plan < state->num_subplans);
 state->current = next_plan;





 if (next_plan < state->filtered_first_partial_plan)
  pstate->finished[next_plan] = 1;


 pstate->next_plan = get_next_subplan(state, state->current);





 if (pstate->next_plan < 0)
  pstate->next_plan = INVALID_SUBPLAN_INDEX;

 LWLockRelease(state->lock);
}
