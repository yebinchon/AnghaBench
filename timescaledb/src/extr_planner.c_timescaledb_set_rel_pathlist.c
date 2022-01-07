
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int (* set_rel_pathlist_dml ) (int *,int *,int ,TYPE_1__*,int *) ;} ;
struct TYPE_11__ {int relid; } ;
typedef int RelOptInfo ;
typedef TYPE_1__ RangeTblEntry ;
typedef int PlannerInfo ;
typedef int Oid ;
typedef int Index ;
typedef int Hypertable ;
typedef int Cache ;


 scalar_t__ IS_DUMMY_REL (int *) ;
 int OidIsValid (int ) ;
 int get_parentoid (int *,int ) ;
 scalar_t__ is_append_child (int *,TYPE_1__*) ;
 scalar_t__ is_append_parent (int *,TYPE_1__*) ;
 int is_hypertable_chunk_dml (int *,int *,int ,TYPE_1__*) ;
 int prev_set_rel_pathlist_hook (int *,int *,int ,TYPE_1__*) ;
 int stub1 (int *,int *,int ,TYPE_1__*) ;
 int stub2 (int *,int *,int ,TYPE_1__*,int *) ;
 int timescaledb_set_rel_pathlist_query (int *,int *,int ,TYPE_1__*,int *) ;
 int ts_cache_release (int *) ;
 TYPE_2__* ts_cm_functions ;
 int ts_extension_is_loaded () ;
 int ts_guc_optimize_non_hypertables ;
 int * ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;

__attribute__((used)) static void
timescaledb_set_rel_pathlist(PlannerInfo *root, RelOptInfo *rel, Index rti, RangeTblEntry *rte)
{
 Hypertable *ht;
 Cache *hcache;
 Oid ht_reloid = rte->relid;
 bool is_htdml;

 if (prev_set_rel_pathlist_hook != ((void*)0))
  (*prev_set_rel_pathlist_hook)(root, rel, rti, rte);

 if (!ts_extension_is_loaded() || IS_DUMMY_REL(rel) || !OidIsValid(rte->relid))
  return;


 is_htdml = is_hypertable_chunk_dml(root, rel, rti, rte);


 if (!ts_guc_optimize_non_hypertables &&
  !(is_append_parent(rel, rte) || is_append_child(rel, rte) || is_htdml))
  return;

 hcache = ts_hypertable_cache_pin();





 if (is_append_child(rel, rte) || is_htdml)
  ht_reloid = get_parentoid(root, rti);

 ht = ts_hypertable_cache_get_entry(hcache, ht_reloid);

 if (!is_htdml)
 {
  timescaledb_set_rel_pathlist_query(root, rel, rti, rte, ht);
 }
 else
 {
  if (ts_cm_functions->set_rel_pathlist_dml != ((void*)0))
   ts_cm_functions->set_rel_pathlist_dml(root, rel, rti, rte, ht);
 }

 ts_cache_release(hcache);
}
