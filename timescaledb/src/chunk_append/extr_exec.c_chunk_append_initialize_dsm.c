
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {TYPE_1__* pstate; void* current; int choose_next_subplan; int lock; } ;
struct TYPE_7__ {int pscan_len; } ;
struct TYPE_6__ {void* next_plan; } ;
typedef int ParallelContext ;
typedef TYPE_1__ ParallelChunkAppendState ;
typedef TYPE_2__ CustomScanState ;
typedef TYPE_3__ ChunkAppendState ;


 void* INVALID_SUBPLAN_INDEX ;
 int choose_next_subplan_for_leader ;
 int chunk_append_get_lock_pointer () ;
 int memset (TYPE_1__*,int ,int ) ;

__attribute__((used)) static void
chunk_append_initialize_dsm(CustomScanState *node, ParallelContext *pcxt, void *coordinate)
{
 ChunkAppendState *state = (ChunkAppendState *) node;
 ParallelChunkAppendState *pstate = (ParallelChunkAppendState *) coordinate;

 memset(pstate, 0, node->pscan_len);

 state->lock = chunk_append_get_lock_pointer();
 pstate->next_plan = INVALID_SUBPLAN_INDEX;

 state->choose_next_subplan = choose_next_subplan_for_leader;
 state->current = INVALID_SUBPLAN_INDEX;
 state->pstate = pstate;
}
