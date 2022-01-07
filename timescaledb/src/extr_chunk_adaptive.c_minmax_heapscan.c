
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int cmp_proc_finfo; int cmp_proc; } ;
typedef TYPE_1__ TypeCacheEntry ;
typedef int Relation ;
typedef int Oid ;
typedef int MinMaxResult ;
typedef int * HeapTuple ;
typedef int HeapScanDesc ;
typedef int Datum ;
typedef int AttrNumber ;


 scalar_t__ DatumGetInt32 (int ) ;
 int ERROR ;
 int ForwardScanDirection ;
 int FunctionCall2 (int *,int ,int ) ;
 int GetTransactionSnapshot () ;
 int MINMAX_FOUND ;
 int MINMAX_NO_TUPLES ;
 int OidIsValid (int ) ;
 int RelationGetDescr (int ) ;
 int TYPECACHE_CMP_PROC ;
 int TYPECACHE_CMP_PROC_FINFO ;
 int elog (int ,char*,int ) ;
 int heap_beginscan (int ,int ,int ,int *) ;
 int heap_endscan (int ) ;
 int heap_getattr (int *,int ,int ,int*) ;
 int * heap_getnext (int ,int ) ;
 TYPE_1__* lookup_type_cache (int ,int) ;

__attribute__((used)) static MinMaxResult
minmax_heapscan(Relation rel, Oid atttype, AttrNumber attnum, Datum minmax[2])
{
 HeapScanDesc scan;
 HeapTuple tuple;
 TypeCacheEntry *tce;
 bool nulls[2] = { 1, 1 };


 tce = lookup_type_cache(atttype, TYPECACHE_CMP_PROC | TYPECACHE_CMP_PROC_FINFO);

 if (((void*)0) == tce || !OidIsValid(tce->cmp_proc))
  elog(ERROR, "no comparison function for type %u", atttype);

 scan = heap_beginscan(rel, GetTransactionSnapshot(), 0, ((void*)0));

 while ((tuple = heap_getnext(scan, ForwardScanDirection)) != ((void*)0))
 {
  bool isnull;
  Datum value = heap_getattr(tuple, attnum, RelationGetDescr(rel), &isnull);

  if (isnull)
   continue;


  if (nulls[0] || DatumGetInt32(FunctionCall2(&tce->cmp_proc_finfo, value, minmax[0])) < 0)
  {
   nulls[0] = 0;
   minmax[0] = value;
  }


  if (nulls[1] || DatumGetInt32(FunctionCall2(&tce->cmp_proc_finfo, value, minmax[1])) > 0)
  {
   nulls[1] = 0;
   minmax[1] = value;
  }
 }

 heap_endscan(scan);

 return (nulls[0] || nulls[1]) ? MINMAX_NO_TUPLES : MINMAX_FOUND;
}
