
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


struct TYPE_23__ {int compressed; } ;
typedef TYPE_3__ TimescaleDBPrivate ;
struct TYPE_22__ {scalar_t__ compressed_chunk_id; } ;
struct TYPE_27__ {TYPE_2__ fd; } ;
struct TYPE_26__ {TYPE_1__* parse; } ;
struct TYPE_25__ {int relid; int inh; } ;
struct TYPE_24__ {int indexlist; int * fdw_private; int relid; } ;
struct TYPE_21__ {int rtable; } ;
typedef TYPE_4__ RelOptInfo ;
typedef TYPE_5__ RangeTblEntry ;
typedef TYPE_6__ PlannerInfo ;
typedef int Oid ;
typedef int Hypertable ;
typedef TYPE_7__ Chunk ;
typedef int Cache ;


 int Assert (int ) ;
 int NIL ;
 scalar_t__ TS_HYPERTABLE_HAS_COMPRESSION (int *) ;
 int get_parentoid (TYPE_6__*,int ) ;
 scalar_t__ is_append_child (TYPE_4__*,TYPE_5__*) ;
 scalar_t__ is_rte_hypertable (TYPE_5__*) ;
 void* palloc0 (int) ;
 int prev_get_relation_info_hook (TYPE_6__*,int ,int,TYPE_4__*) ;
 TYPE_5__* rt_fetch (int ,int ) ;
 int setup_append_rel_array (TYPE_6__*) ;
 int ts_cache_release (int *) ;
 TYPE_7__* ts_chunk_get_by_relid (int ,int ,int) ;
 int ts_extension_is_loaded () ;
 int ts_guc_enable_constraint_exclusion ;
 scalar_t__ ts_guc_enable_transparent_decompression ;
 int * ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 int ts_plan_expand_hypertable_chunks (int *,TYPE_6__*,int ,int,TYPE_4__*) ;

__attribute__((used)) static void
timescaledb_get_relation_info_hook(PlannerInfo *root, Oid relation_objectid, bool inhparent,
           RelOptInfo *rel)
{
 RangeTblEntry *rte;

 if (prev_get_relation_info_hook != ((void*)0))
  prev_get_relation_info_hook(root, relation_objectid, inhparent, rel);

 if (!ts_extension_is_loaded() || !ts_guc_enable_constraint_exclusion)
  return;

 rte = rt_fetch(rel->relid, root->parse->rtable);
 if (!rte->inh && is_rte_hypertable(rte))
 {
  Cache *hcache = ts_hypertable_cache_pin();
  Hypertable *ht = ts_hypertable_cache_get_entry(hcache, rte->relid);

  Assert(ht != ((void*)0));

  Assert(rel->fdw_private == ((void*)0));
  rel->fdw_private = palloc0(sizeof(TimescaleDBPrivate));

  ts_plan_expand_hypertable_chunks(ht, root, relation_objectid, inhparent, rel);




  ts_cache_release(hcache);
 }

 if (ts_guc_enable_transparent_decompression && is_append_child(rel, rte))
 {
  Oid ht_oid = get_parentoid(root, rel->relid);
  Cache *hcache = ts_hypertable_cache_pin();
  Hypertable *ht = ts_hypertable_cache_get_entry(hcache, ht_oid);

  if (ht != ((void*)0) && TS_HYPERTABLE_HAS_COMPRESSION(ht))
  {
   Chunk *chunk = ts_chunk_get_by_relid(rte->relid, 0, 1);

   if (chunk->fd.compressed_chunk_id > 0)
   {
    Assert(rel->fdw_private == ((void*)0));
    rel->fdw_private = palloc0(sizeof(TimescaleDBPrivate));
    ((TimescaleDBPrivate *) rel->fdw_private)->compressed = 1;







    rel->indexlist = NIL;
   }
  }
  ts_cache_release(hcache);
 }
}
