
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int id; } ;
struct TYPE_9__ {int space; TYPE_1__ fd; } ;
struct TYPE_8__ {int newname; int subname; } ;
typedef TYPE_2__ RenameStmt ;
typedef int ProcessUtilityArgs ;
typedef int Oid ;
typedef TYPE_3__ Hypertable ;
typedef int Dimension ;
typedef int Chunk ;
typedef int Cache ;


 int DIMENSION_TYPE_ANY ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int HypertableIsMaterialization ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,int ) ;
 int get_rel_name (int ) ;
 int process_add_hypertable (int *,TYPE_3__*) ;
 int * ts_chunk_get_by_relid (int ,int ,int) ;
 int ts_continuous_agg_hypertable_status (int ) ;
 int ts_dimension_set_name (int *,int ) ;
 int * ts_hyperspace_get_dimension_by_name (int ,int ,int ) ;
 TYPE_3__* ts_hypertable_cache_get_entry (int *,int ) ;

__attribute__((used)) static void
process_rename_column(ProcessUtilityArgs *args, Cache *hcache, Oid relid, RenameStmt *stmt)
{
 Hypertable *ht = ts_hypertable_cache_get_entry(hcache, relid);
 Dimension *dim;

 if (((void*)0) == ht)
 {
  Chunk *chunk = ts_chunk_get_by_relid(relid, 0, 0);

  if (((void*)0) != chunk)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("cannot rename column \"%s\" of hypertable chunk \"%s\"",
       stmt->subname,
       get_rel_name(relid)),
      errhint("Rename the hypertable column instead.")));
  return;
 }


 if ((ts_continuous_agg_hypertable_status(ht->fd.id) & HypertableIsMaterialization) != 0)
  ereport(ERROR,
    (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
     errmsg("cannot rename column \"%s\" of materialization table \"%s\"",
      stmt->subname,
      get_rel_name(relid))));

 process_add_hypertable(args, ht);

 dim = ts_hyperspace_get_dimension_by_name(ht->space, DIMENSION_TYPE_ANY, stmt->subname);

 if (((void*)0) == dim)
  return;

 ts_dimension_set_name(dim, stmt->newname);
}
