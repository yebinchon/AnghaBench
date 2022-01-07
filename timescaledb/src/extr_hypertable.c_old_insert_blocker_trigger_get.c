
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ tgisinternal; int tgname; int tgtype; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_trigger ;


 int AccessShareLock ;
 int Anum_pg_trigger_tgrelid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 int HeapTupleGetOid (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InvalidOid ;
 int NameStr (int ) ;
 int OLD_INSERT_BLOCKER_NAME ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TRIGGER_TYPE_BEFORE ;
 int TRIGGER_TYPE_INSERT ;
 scalar_t__ TRIGGER_TYPE_MATCHES (int ,int ,int ,int ) ;
 int TRIGGER_TYPE_ROW ;
 int TriggerRelationId ;
 int TriggerRelidNameIndexId ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int strlen (int ) ;
 scalar_t__ strncmp (int ,int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static Oid
old_insert_blocker_trigger_get(Oid relid)
{
 Relation tgrel;
 ScanKeyData skey[1];
 SysScanDesc tgscan;
 HeapTuple tuple;
 Oid tgoid = InvalidOid;

 tgrel = heap_open(TriggerRelationId, AccessShareLock);

 ScanKeyInit(&skey[0],
    Anum_pg_trigger_tgrelid,
    BTEqualStrategyNumber,
    F_OIDEQ,
    ObjectIdGetDatum(relid));

 tgscan = systable_beginscan(tgrel, TriggerRelidNameIndexId, 1, ((void*)0), 1, skey);

 while (HeapTupleIsValid(tuple = systable_getnext(tgscan)))
 {
  Form_pg_trigger trig = (Form_pg_trigger) GETSTRUCT(tuple);

  if (TRIGGER_TYPE_MATCHES(trig->tgtype,
         TRIGGER_TYPE_ROW,
         TRIGGER_TYPE_BEFORE,
         TRIGGER_TYPE_INSERT) &&
   strncmp(OLD_INSERT_BLOCKER_NAME,
     NameStr(trig->tgname),
     strlen(OLD_INSERT_BLOCKER_NAME)) == 0 &&
   trig->tgisinternal)
  {
   tgoid = HeapTupleGetOid(tuple);
   break;
  }
 }

 systable_endscan(tgscan);
 heap_close(tgrel, AccessShareLock);

 return tgoid;
}
