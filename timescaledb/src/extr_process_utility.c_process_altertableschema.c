
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ objectType; int newschema; int * relation; } ;
struct TYPE_5__ {scalar_t__ parsetree; } ;
typedef TYPE_1__ ProcessUtilityArgs ;
typedef int Oid ;
typedef int Hypertable ;
typedef int Chunk ;
typedef int Cache ;
typedef TYPE_2__ AlterObjectSchemaStmt ;


 int Assert (int) ;
 int NoLock ;
 scalar_t__ OBJECT_TABLE ;
 int OidIsValid (int ) ;
 int RangeVarGetRelid (int *,int ,int) ;
 int process_add_hypertable (TYPE_1__*,int *) ;
 int ts_cache_release (int *) ;
 int * ts_chunk_get_by_relid (int ,int ,int) ;
 int ts_chunk_set_schema (int *,int ) ;
 int * ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 int ts_hypertable_set_schema (int *,int ) ;

__attribute__((used)) static void
process_altertableschema(ProcessUtilityArgs *args)
{
 AlterObjectSchemaStmt *alterstmt = (AlterObjectSchemaStmt *) args->parsetree;
 Oid relid;
 Cache *hcache;
 Hypertable *ht;

 Assert(alterstmt->objectType == OBJECT_TABLE);

 if (((void*)0) == alterstmt->relation)
  return;

 relid = RangeVarGetRelid(alterstmt->relation, NoLock, 1);

 if (!OidIsValid(relid))
  return;

 hcache = ts_hypertable_cache_pin();
 ht = ts_hypertable_cache_get_entry(hcache, relid);

 if (ht == ((void*)0))
 {
  Chunk *chunk = ts_chunk_get_by_relid(relid, 0, 0);

  if (((void*)0) != chunk)
   ts_chunk_set_schema(chunk, alterstmt->newschema);
 }
 else
 {
  ts_hypertable_set_schema(ht, alterstmt->newschema);

  process_add_hypertable(args, ht);
 }

 ts_cache_release(hcache);
}
