
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int current; } ;
typedef TYPE_1__ ChunkAppendState ;


 int NO_MATCHING_SUBPLANS ;

__attribute__((used)) static void
choose_next_subplan_for_leader(ChunkAppendState *state)
{
 state->current = NO_MATCHING_SUBPLANS;
}
