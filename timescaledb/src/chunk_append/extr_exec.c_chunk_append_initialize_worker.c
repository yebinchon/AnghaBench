
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int shm_toc ;
struct TYPE_2__ {int * pstate; int current; int choose_next_subplan; int lock; } ;
typedef int ParallelChunkAppendState ;
typedef int CustomScanState ;
typedef TYPE_1__ ChunkAppendState ;


 int INVALID_SUBPLAN_INDEX ;
 int choose_next_subplan_for_worker ;
 int chunk_append_get_lock_pointer () ;

__attribute__((used)) static void
chunk_append_initialize_worker(CustomScanState *node, shm_toc *toc, void *coordinate)
{
 ChunkAppendState *state = (ChunkAppendState *) node;
 ParallelChunkAppendState *pstate = (ParallelChunkAppendState *) coordinate;

 state->lock = chunk_append_get_lock_pointer();
 state->choose_next_subplan = choose_next_subplan_for_worker;
 state->current = INVALID_SUBPLAN_INDEX;
 state->pstate = pstate;
}
