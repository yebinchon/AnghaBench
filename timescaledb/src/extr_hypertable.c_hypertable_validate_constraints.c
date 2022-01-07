
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ contype; scalar_t__ connoinherit; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int HeapTuple ;
typedef TYPE_1__* Form_pg_constraint ;


 int AccessShareLock ;
 int Anum_pg_constraint_conrelid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_CHECK ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int ERRCODE_INVALID_TABLE_DEFINITION ;
 int ERROR ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int ObjectIdGetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*,int ) ;
 int errmsg (char*,int ) ;
 int get_rel_name (int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static void
hypertable_validate_constraints(Oid relid)
{
 Relation catalog;
 SysScanDesc scan;
 ScanKeyData scankey;
 HeapTuple tuple;

 catalog = heap_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&scankey,
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber,
    F_OIDEQ,
    ObjectIdGetDatum(relid));

 scan = systable_beginscan(catalog, ConstraintRelidTypidNameIndexId, 1, ((void*)0), 1, &scankey);

 while (HeapTupleIsValid(tuple = systable_getnext(scan)))
 {
  Form_pg_constraint form = (Form_pg_constraint) GETSTRUCT(tuple);

  if (form->contype == CONSTRAINT_CHECK && form->connoinherit)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TABLE_DEFINITION),
      errmsg("cannot have NO INHERIT constraints on hypertable \"%s\"",
       get_rel_name(relid)),
      errhint("Remove all NO INHERIT constraints from table \"%s\" before making it "
        "a hypertable.",
        get_rel_name(relid))));
 }

 systable_endscan(scan);
 heap_close(catalog, AccessShareLock);
}
