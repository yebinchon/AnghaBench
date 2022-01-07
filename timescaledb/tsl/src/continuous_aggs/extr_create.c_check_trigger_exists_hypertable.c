
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int tgname; } ;
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
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int TriggerRelationId ;
 int TriggerRelidNameIndexId ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 scalar_t__ namestrcmp (int *,char*) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static bool
check_trigger_exists_hypertable(Oid relid, char *trigname)
{
 Relation tgrel;
 ScanKeyData skey[1];
 SysScanDesc tgscan;
 HeapTuple tuple;
 bool trg_found = 0;

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
  if (namestrcmp(&(trig->tgname), trigname) == 0)
  {
   trg_found = 1;
   break;
  }
 }
 systable_endscan(tgscan);
 heap_close(tgrel, AccessShareLock);
 return trg_found;
}
