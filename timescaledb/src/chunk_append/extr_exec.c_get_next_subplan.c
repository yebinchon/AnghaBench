
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_subplans; int valid_subplans; int runtime_initialized; scalar_t__ runtime_exclusion; } ;
typedef TYPE_1__ ChunkAppendState ;


 int NO_MATCHING_SUBPLANS ;
 int bms_next_member (int ,int) ;
 int initialize_runtime_exclusion (TYPE_1__*) ;

__attribute__((used)) static int
get_next_subplan(ChunkAppendState *state, int last_plan)
{
 if (last_plan == NO_MATCHING_SUBPLANS)
  return NO_MATCHING_SUBPLANS;

 if (state->runtime_exclusion)
 {
  if (!state->runtime_initialized)
   initialize_runtime_exclusion(state);





  return bms_next_member(state->valid_subplans, last_plan);
 }
 else
 {
  int next_plan = last_plan + 1;

  if (next_plan >= state->num_subplans)
   return NO_MATCHING_SUBPLANS;

  return next_plan;
 }
}
