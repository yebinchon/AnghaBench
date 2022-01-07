
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
typedef TYPE_2__ CreateTrigStmt ;


 TYPE_1__ CreateTriggerCompat (TYPE_2__*,int *,int ,int ,int ,int ,int) ;
 int ERROR ;
 int INSERT_BLOCKER_NAME ;
 int INTERNAL_SCHEMA_NAME ;
 int InvalidOid ;
 int NIL ;
 int OLD_INSERT_BLOCKER_NAME ;
 int OidIsValid (int ) ;
 int TRIGGER_TYPE_BEFORE ;
 int TRIGGER_TYPE_INSERT ;
 int T_CreateTrigStmt ;
 int elog (int ,char*) ;
 char* get_namespace_name (int ) ;
 char* get_rel_name (int ) ;
 int get_rel_namespace (int ) ;
 int list_make2 (int ,int ) ;
 int makeRangeVar (char*,char*,int) ;
 int makeString (int ) ;

__attribute__((used)) static Oid
insert_blocker_trigger_add(Oid relid)
{
 ObjectAddress objaddr;
 char *relname = get_rel_name(relid);
 Oid schemaid = get_rel_namespace(relid);
 char *schema = get_namespace_name(schemaid);
 CreateTrigStmt stmt = {
  .type = T_CreateTrigStmt,
  .row = 1,
  .timing = TRIGGER_TYPE_BEFORE,
  .trigname = INSERT_BLOCKER_NAME,
  .relation = makeRangeVar(schema, relname, -1),
  .funcname =
   list_make2(makeString(INTERNAL_SCHEMA_NAME), makeString(OLD_INSERT_BLOCKER_NAME)),
  .args = NIL,
  .events = TRIGGER_TYPE_INSERT,
 };






 objaddr = CreateTriggerCompat(&stmt, ((void*)0), relid, InvalidOid, InvalidOid, InvalidOid, 0);

 if (!OidIsValid(objaddr.objectId))
  elog(ERROR, "could not create insert blocker trigger");

 return objaddr.objectId;
}
