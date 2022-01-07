
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int id; } ;
struct TYPE_14__ {TYPE_1__ fd; } ;
struct TYPE_13__ {scalar_t__ parsetree; } ;
struct TYPE_12__ {int kind; int * relation; } ;
typedef TYPE_2__ ReindexStmt ;
typedef TYPE_3__ ProcessUtilityArgs ;
typedef int Oid ;
typedef TYPE_4__ Hypertable ;
typedef int Cache ;


 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int IndexGetRelation (int ,int) ;
 int NoLock ;
 int OidIsValid (int ) ;
 int PreventCommandDuringRecovery (char*) ;


 int RangeVarGetRelid (int *,int ,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*) ;
 int foreach_chunk (TYPE_4__*,int ,TYPE_2__*) ;
 int process_add_hypertable (TYPE_3__*,TYPE_4__*) ;
 int reindex_chunk ;
 int ts_cache_release (int *) ;
 TYPE_4__* ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 int ts_hypertable_permissions_check_by_id (int ) ;

__attribute__((used)) static bool
process_reindex(ProcessUtilityArgs *args)
{
 ReindexStmt *stmt = (ReindexStmt *) args->parsetree;
 Oid relid;
 Cache *hcache;
 Hypertable *ht;
 bool ret = 0;

 if (((void*)0) == stmt->relation)

  return 0;

 relid = RangeVarGetRelid(stmt->relation, NoLock, 1);

 if (!OidIsValid(relid))
  return 0;

 hcache = ts_hypertable_cache_pin();

 switch (stmt->kind)
 {
  case 128:
   ht = ts_hypertable_cache_get_entry(hcache, relid);

   if (((void*)0) != ht)
   {
    PreventCommandDuringRecovery("REINDEX");
    ts_hypertable_permissions_check_by_id(ht->fd.id);

    if (foreach_chunk(ht, reindex_chunk, stmt) >= 0)
     ret = 1;

    process_add_hypertable(args, ht);
   }
   break;
  case 129:
   ht = ts_hypertable_cache_get_entry(hcache, IndexGetRelation(relid, 1));

   if (((void*)0) != ht)
   {
    process_add_hypertable(args, ht);
    ts_hypertable_permissions_check_by_id(ht->fd.id);






    ereport(ERROR,
      (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
       errmsg("reindexing of a specific index on a hypertable is unsupported"),
       errhint(
        "As a workaround, it is possible to run REINDEX TABLE to reindex all "
        "indexes on a hypertable, including all indexes on chunks.")));
   }
   break;
  default:
   break;
 }

 ts_cache_release(hcache);

 return ret;
}
