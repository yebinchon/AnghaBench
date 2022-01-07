
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int relation; } ;
typedef TYPE_1__ RenameStmt ;
typedef int ProcessUtilityArgs ;
typedef int Oid ;
typedef int Hypertable ;
typedef int Chunk ;
typedef int Cache ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 int foreach_chunk (int *,int ,TYPE_1__*) ;
 int process_add_hypertable (int *,int *) ;
 int relation_not_only (int ) ;
 int rename_hypertable_constraint ;
 int * ts_chunk_get_by_relid (int ,int ,int) ;
 int * ts_hypertable_cache_get_entry (int *,int ) ;

__attribute__((used)) static void
process_rename_constraint(ProcessUtilityArgs *args, Cache *hcache, Oid relid, RenameStmt *stmt)
{
 Hypertable *ht;

 ht = ts_hypertable_cache_get_entry(hcache, relid);

 if (((void*)0) != ht)
 {
  relation_not_only(stmt->relation);
  process_add_hypertable(args, ht);
  foreach_chunk(ht, rename_hypertable_constraint, stmt);
 }
 else
 {
  Chunk *chunk = ts_chunk_get_by_relid(relid, 0, 0);

  if (((void*)0) != chunk)
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("renaming constraints on chunks is not supported")));
 }
}
