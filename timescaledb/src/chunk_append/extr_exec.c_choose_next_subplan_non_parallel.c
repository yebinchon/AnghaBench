
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int current; } ;
typedef TYPE_1__ ChunkAppendState ;


 int get_next_subplan (TYPE_1__*,int ) ;

__attribute__((used)) static void
choose_next_subplan_non_parallel(ChunkAppendState *state)
{
 state->current = get_next_subplan(state, state->current);
}
