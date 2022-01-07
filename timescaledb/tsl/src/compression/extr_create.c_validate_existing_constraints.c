
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t int16 ;
struct TYPE_10__ {TYPE_1__* col_meta; } ;
struct TYPE_9__ {scalar_t__ contype; int conname; } ;
struct TYPE_8__ {int main_table_relid; } ;
struct TYPE_7__ {int segmentby_column_index; int orderby_column_index; int attname; } ;
typedef int SysScanDesc ;
typedef int ScanKeyData ;
typedef int Relation ;
typedef int Oid ;
typedef int Name ;
typedef int List ;
typedef TYPE_2__ Hypertable ;
typedef int HeapTuple ;
typedef TYPE_3__* Form_pg_constraint ;
typedef int Datum ;
typedef TYPE_4__ CompressColInfo ;
typedef int ArrayType ;


 scalar_t__ ARR_DATA_PTR (int *) ;
 int* ARR_DIMS (int *) ;
 scalar_t__ ARR_ELEMTYPE (int *) ;
 scalar_t__ ARR_HASNULL (int *) ;
 int ARR_NDIM (int *) ;
 int AccessShareLock ;
 int Anum_pg_constraint_conkey ;
 int Anum_pg_constraint_conrelid ;
 int BTEqualStrategyNumber ;
 scalar_t__ CONSTRAINT_CHECK ;
 scalar_t__ CONSTRAINT_EXCLUSION ;
 scalar_t__ CONSTRAINT_FOREIGN ;
 scalar_t__ CONSTRAINT_TRIGGER ;
 int ConstraintRelationId ;
 int ConstraintRelidTypidNameIndexId ;
 int * DatumGetArrayTypeP (int ) ;
 int ERRCODE_FEATURE_NOT_SUPPORTED ;
 int ERROR ;
 int F_OIDEQ ;
 int GETSTRUCT (int ) ;
 int HeapTupleGetOid (int ) ;
 scalar_t__ HeapTupleIsValid (int ) ;
 scalar_t__ INT2OID ;
 int NAMEDATALEN ;
 int * NIL ;
 int NameStr (int ) ;
 int ObjectIdGetDatum (int ) ;
 int RelationGetDescr (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int elog (int ,char*,...) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errhint (char*) ;
 int errmsg (char*,int ,...) ;
 int heap_close (int ,int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int heap_open (int ,int ) ;
 int * lappend (int *,int ) ;
 int namecpy (int ,int *) ;
 int palloc0 (int ) ;
 int systable_beginscan (int ,int ,int,int *,int,int *) ;
 int systable_endscan (int ) ;
 int systable_getnext (int ) ;

__attribute__((used)) static List *
validate_existing_constraints(Hypertable *ht, CompressColInfo *colinfo)
{
 Oid relid = ht->main_table_relid;
 Relation pg_constr;
 SysScanDesc scan;
 ScanKeyData scankey;
 HeapTuple tuple;
 List *conlist = NIL;
 ArrayType *arr;

 pg_constr = heap_open(ConstraintRelationId, AccessShareLock);

 ScanKeyInit(&scankey,
    Anum_pg_constraint_conrelid,
    BTEqualStrategyNumber,
    F_OIDEQ,
    ObjectIdGetDatum(relid));

 scan = systable_beginscan(pg_constr, ConstraintRelidTypidNameIndexId, 1, ((void*)0), 1, &scankey);
 while (HeapTupleIsValid(tuple = systable_getnext(scan)))
 {
  Form_pg_constraint form = (Form_pg_constraint) GETSTRUCT(tuple);





  if (form->contype == CONSTRAINT_CHECK || form->contype == CONSTRAINT_TRIGGER)
   continue;
  else if (form->contype == CONSTRAINT_EXCLUSION)
  {
   ereport(ERROR,
     (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
      errmsg("constraint %s is not supported for compression",
       NameStr(form->conname)),
      errhint("Exclusion constraints are not supported on hypertables that are "
        "compressed.")));
  }
  else
  {
   int j, numkeys;
   int16 *attnums;
   bool isNull;

   Datum adatum = heap_getattr(tuple,
          Anum_pg_constraint_conkey,
          RelationGetDescr(pg_constr),
          &isNull);
   if (isNull)
    elog(ERROR, "null conkey for constraint %u", HeapTupleGetOid(tuple));
   arr = DatumGetArrayTypeP(adatum);
   numkeys = ARR_DIMS(arr)[0];
   if (ARR_NDIM(arr) != 1 || numkeys < 0 || ARR_HASNULL(arr) ||
    ARR_ELEMTYPE(arr) != INT2OID)
    elog(ERROR, "conkey is not a 1-D smallint array");
   attnums = (int16 *) ARR_DATA_PTR(arr);
   for (j = 0; j < numkeys; j++)
   {
    int16 colno = attnums[j] - 1;
    if (form->contype == CONSTRAINT_FOREIGN)
    {

     if (colinfo->col_meta[colno].segmentby_column_index < 1)
     {
      ereport(ERROR,
        (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
         errmsg("constraint %s requires column %s to be a segment_by "
          "column for compression",
          NameStr(form->conname),
          NameStr(colinfo->col_meta[colno].attname)),
         errhint("Only segment by columns can be used in foreign key"
           "constraints on hypertables that are compressed.")));
     }
     else
     {
      Name conname = palloc0(NAMEDATALEN);
      namecpy(conname, &form->conname);
      conlist = lappend(conlist, conname);
     }
    }
    else
    {

     if (colinfo->col_meta[colno].segmentby_column_index < 1 &&
      colinfo->col_meta[colno].orderby_column_index < 1)
      ereport(ERROR,
        (errcode(ERRCODE_FEATURE_NOT_SUPPORTED),
         errmsg("constraint %s requires column %s to be a segment_by or "
          "order_by column for compression",
          NameStr(form->conname),
          NameStr(colinfo->col_meta[colno].attname)),
         errhint("Only segment by and order by columns can be used in "
           "constraints on hypertables that are compressed.")));
    }
   }
  }
 }

 systable_endscan(scan);
 heap_close(pg_constr, AccessShareLock);
 return conlist;
}
