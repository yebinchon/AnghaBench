
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int row; int events; int args; int funcname; int relation; int trigname; int timing; int type; } ;
struct TYPE_5__ {int objectId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;
typedef int Hypertable ;
typedef TYPE_2__ CreateTrigStmt ;
typedef int Cache ;


 int CAGGINVAL_TRIGGER_NAME ;
 char* CAGG_INVALIDATION_TRIGGER ;
 int ERRCODE_INTERNAL_ERROR ;
 int ERROR ;
 char* INTERNAL_SCHEMA_NAME ;
 int OidIsValid (int ) ;
 int TRIGGER_TYPE_AFTER ;
 int TRIGGER_TYPE_DELETE ;
 int TRIGGER_TYPE_INSERT ;
 int TRIGGER_TYPE_UPDATE ;
 int T_CreateTrigStmt ;
 scalar_t__ check_trigger_exists_hypertable (int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;
 char* get_namespace_name (int ) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int list_make1 (int ) ;
 int list_make2 (int ,int ) ;
 int makeRangeVar (char*,char*,int) ;
 int makeString (char*) ;
 int ts_cache_release (int *) ;
 int * ts_hypertable_cache_get_entry (int *,int ) ;
 int * ts_hypertable_cache_pin () ;
 TYPE_1__ ts_hypertable_create_trigger (int *,TYPE_2__*,int *) ;

__attribute__((used)) static void
cagg_add_trigger_hypertable(Oid relid, char *trigarg)
{
 ObjectAddress objaddr;
 char *relname = get_rel_name(relid);
 Oid schemaid = get_rel_namespace(relid);
 char *schema = get_namespace_name(schemaid);
 Cache *hcache;
 Hypertable *ht;

 CreateTrigStmt stmt = {
  .type = T_CreateTrigStmt,
  .row = 1,
  .timing = TRIGGER_TYPE_AFTER,
  .trigname = CAGGINVAL_TRIGGER_NAME,
  .relation = makeRangeVar(schema, relname, -1),
  .funcname =
   list_make2(makeString(INTERNAL_SCHEMA_NAME), makeString(CAGG_INVALIDATION_TRIGGER)),
  .args = list_make1(makeString(trigarg)),
  .events = TRIGGER_TYPE_INSERT | TRIGGER_TYPE_UPDATE | TRIGGER_TYPE_DELETE,
 };
 if (check_trigger_exists_hypertable(relid, CAGGINVAL_TRIGGER_NAME))
  return;
 hcache = ts_hypertable_cache_pin();
 ht = ts_hypertable_cache_get_entry(hcache, relid);
 objaddr = ts_hypertable_create_trigger(ht, &stmt, ((void*)0));
 if (!OidIsValid(objaddr.objectId))
  ereport(ERROR,
    (errcode(ERRCODE_INTERNAL_ERROR),
     errmsg("could not create continuous aggregate trigger")));
 ts_cache_release(hcache);
}
