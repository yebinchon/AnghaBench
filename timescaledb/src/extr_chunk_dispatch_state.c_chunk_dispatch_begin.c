
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int dispatch; int * hypertable_cache; int subplan; int hypertable_relid; } ;
struct TYPE_4__ {int custom_ps; } ;
typedef int PlanState ;
typedef int Hypertable ;
typedef int EState ;
typedef TYPE_1__ CustomScanState ;
typedef TYPE_2__ ChunkDispatchState ;
typedef int Cache ;


 int ERROR ;
 int * ExecInitNode (int ,int *,int) ;
 int elog (int ,char*,int ) ;
 int list_make1 (int *) ;
 int ts_cache_release (int *) ;
 int ts_chunk_dispatch_create (int *,int *) ;
 int * ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;

__attribute__((used)) static void
chunk_dispatch_begin(CustomScanState *node, EState *estate, int eflags)
{
 ChunkDispatchState *state = (ChunkDispatchState *) node;
 Hypertable *ht;
 Cache *hypertable_cache;
 PlanState *ps;

 hypertable_cache = ts_hypertable_cache_pin();

 ht = ts_hypertable_cache_get_entry(hypertable_cache, state->hypertable_relid);

 if (((void*)0) == ht)
 {
  ts_cache_release(hypertable_cache);
  elog(ERROR, "no hypertable for relid %d", state->hypertable_relid);
 }
 ps = ExecInitNode(state->subplan, estate, eflags);
 state->hypertable_cache = hypertable_cache;
 state->dispatch = ts_chunk_dispatch_create(ht, estate);
 node->custom_ps = list_make1(ps);
}
