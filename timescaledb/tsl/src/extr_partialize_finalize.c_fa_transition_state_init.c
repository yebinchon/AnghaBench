
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int trans_value_isnull; int trans_value_initialized; } ;
struct TYPE_4__ {TYPE_2__* per_group_state; int * per_query_state; } ;
typedef int MemoryContext ;
typedef TYPE_1__ FATransitionState ;
typedef int FAPerQueryState ;
typedef TYPE_2__ FAPerGroupState ;
typedef int AggState ;


 scalar_t__ MemoryContextAlloc (int ,int) ;

__attribute__((used)) static FATransitionState *
fa_transition_state_init(MemoryContext *fa_context, FAPerQueryState *qstate, AggState *fa_aggstate)
{
 FATransitionState *tstate = ((void*)0);
 tstate = (FATransitionState *) MemoryContextAlloc(*fa_context, sizeof(*tstate));
 tstate->per_query_state = qstate;
 tstate->per_group_state =
  (FAPerGroupState *) MemoryContextAlloc(*fa_context, sizeof(*tstate->per_group_state));


 tstate->per_group_state->trans_value_isnull = 1;
 tstate->per_group_state->trans_value_initialized = 0;
 return tstate;
}
