
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


 int process_add_hypertable (int *,int *) ;
 int * ts_chunk_get_by_relid (int ,int ,int) ;
 int ts_chunk_set_name (int *,int ) ;
 int * ts_hypertable_cache_get_entry (int *,int ) ;
 int ts_hypertable_set_name (int *,int ) ;

__attribute__((used)) static void
process_rename_table(ProcessUtilityArgs *args, Cache *hcache, Oid relid, RenameStmt *stmt)
{
 Hypertable *ht = ts_hypertable_cache_get_entry(hcache, relid);

 if (((void*)0) == ht)
 {
  Chunk *chunk = ts_chunk_get_by_relid(relid, 0, 0);

  if (((void*)0) != chunk)
   ts_chunk_set_name(chunk, stmt->newname);
 }
 else
 {
  ts_hypertable_set_name(ht, stmt->newname);

  process_add_hypertable(args, ht);
 }
}
