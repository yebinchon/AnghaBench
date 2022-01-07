
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * methods; } ;
struct TYPE_5__ {TYPE_1__ cscan_state; int * subplan; int hypertable_relid; } ;
typedef int Plan ;
typedef int Oid ;
typedef TYPE_2__ ChunkDispatchState ;


 int T_CustomScanState ;
 int chunk_dispatch_state_methods ;
 scalar_t__ newNode (int,int ) ;

ChunkDispatchState *
ts_chunk_dispatch_state_create(Oid hypertable_relid, Plan *subplan)
{
 ChunkDispatchState *state;

 state = (ChunkDispatchState *) newNode(sizeof(ChunkDispatchState), T_CustomScanState);
 state->hypertable_relid = hypertable_relid;
 state->subplan = subplan;
 state->cscan_state.methods = &chunk_dispatch_state_methods;
 return state;
}
