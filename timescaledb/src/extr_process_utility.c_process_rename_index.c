
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int newname; } ;
typedef TYPE_1__ RenameStmt ;
typedef int ProcessUtilityArgs ;
typedef int Oid ;
typedef int Hypertable ;
typedef int Chunk ;
typedef int Cache ;


 int IndexGetRelation (int ,int) ;
 int OidIsValid (int ) ;
 int process_add_hypertable (int *,int *) ;
 int * ts_chunk_get_by_relid (int ,int ,int) ;
 int ts_chunk_index_rename (int *,int ,int ) ;
 int ts_chunk_index_rename_parent (int *,int ,int ) ;
 int * ts_hypertable_cache_get_entry (int *,int ) ;

__attribute__((used)) static void
process_rename_index(ProcessUtilityArgs *args, Cache *hcache, Oid relid, RenameStmt *stmt)
{
 Oid tablerelid = IndexGetRelation(relid, 1);
 Hypertable *ht;

 if (!OidIsValid(tablerelid))
  return;

 ht = ts_hypertable_cache_get_entry(hcache, tablerelid);

 if (((void*)0) != ht)
 {
  ts_chunk_index_rename_parent(ht, relid, stmt->newname);

  process_add_hypertable(args, ht);
 }
 else
 {
  Chunk *chunk = ts_chunk_get_by_relid(tablerelid, 0, 0);

  if (((void*)0) != chunk)
   ts_chunk_index_rename(chunk, relid, stmt->newname);
 }
}
