
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int hypertable_cache; int dispatch; } ;
struct TYPE_4__ {int custom_ps; } ;
typedef int PlanState ;
typedef TYPE_1__ CustomScanState ;
typedef TYPE_2__ ChunkDispatchState ;


 int ExecEndNode (int *) ;
 int * linitial (int ) ;
 int ts_cache_release (int ) ;
 int ts_chunk_dispatch_destroy (int ) ;

__attribute__((used)) static void
chunk_dispatch_end(CustomScanState *node)
{
 ChunkDispatchState *state = (ChunkDispatchState *) node;
 PlanState *substate = linitial(node->custom_ps);

 ExecEndNode(substate);
 ts_chunk_dispatch_destroy(state->dispatch);
 ts_cache_release(state->hypertable_cache);
}
