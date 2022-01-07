
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_10__ {int prev_cis_oid; int * prev_cis; int cache; int cmd_type; int arbiter_indexes; int on_conflict; int * hypertable_result_rel_info; TYPE_2__* estate; TYPE_1__* hypertable; } ;
struct TYPE_9__ {int es_query_cxt; } ;
struct TYPE_8__ {int space; } ;
typedef TYPE_1__ Hypertable ;
typedef TYPE_2__ EState ;
typedef TYPE_3__ ChunkDispatch ;


 int CMD_INSERT ;
 int InvalidOid ;
 int NIL ;
 int ONCONFLICT_NONE ;
 TYPE_3__* palloc0 (int) ;
 int ts_guc_max_open_chunks_per_insert ;
 int ts_subspace_store_init (int ,int ,int ) ;

ChunkDispatch *
ts_chunk_dispatch_create(Hypertable *ht, EState *estate)
{
 ChunkDispatch *cd = palloc0(sizeof(ChunkDispatch));

 cd->hypertable = ht;
 cd->estate = estate;
 cd->hypertable_result_rel_info = ((void*)0);
 cd->on_conflict = ONCONFLICT_NONE;
 cd->arbiter_indexes = NIL;
 cd->cmd_type = CMD_INSERT;
 cd->cache =
  ts_subspace_store_init(ht->space, estate->es_query_cxt, ts_guc_max_open_chunks_per_insert);
 cd->prev_cis = ((void*)0);
 cd->prev_cis_oid = InvalidOid;

 return cd;
}
