
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int inhparent; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_inherits ;


 int AccessShareLock ;
 int Anum_pg_inherits_inhrelid ;
 int BTEqualStrategyNumber ;
 int F_OIDEQ ;
 scalar_t__ GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int InheritsRelationId ;
 int InheritsRelidSeqnoIndexId ;
 int InvalidOid ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

Oid
ts_inheritance_parent_relid(Oid relid)
{
 Relation catalog;
 SysScanDesc scan;
 ScanKeyData skey;
 Oid parent = InvalidOid;
 HeapTuple tuple;

 catalog = heap_open(InheritsRelationId, AccessShareLock);
 ScanKeyInit(&skey,
    Anum_pg_inherits_inhrelid,
    BTEqualStrategyNumber,
    F_OIDEQ,
    ObjectIdGetDatum(relid));
 scan = systable_beginscan(catalog, InheritsRelidSeqnoIndexId, 1, ((void*)0), 1, &skey);
 tuple = systable_getnext(scan);

 if (HeapTupleIsValid(tuple))
  parent = ((Form_pg_inherits) GETSTRUCT(tuple))->inhparent;

 systable_endscan(scan);
 heap_close(catalog, AccessShareLock);

 return parent;
}
