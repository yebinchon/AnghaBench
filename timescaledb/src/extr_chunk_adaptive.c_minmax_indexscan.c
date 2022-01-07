
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int MinMaxResult ;
typedef int IndexScanDesc ;
typedef int HeapTuple ;
typedef int Datum ;
typedef int AttrNumber ;


 int BackwardScanDirection ;
 int ForwardScanDirection ;
 int GetTransactionSnapshot () ;
 scalar_t__ HeapTupleIsValid (int ) ;
 int MINMAX_FOUND ;
 int MINMAX_NO_TUPLES ;
 int RelationGetDescr (int ) ;
 int heap_getattr (int ,int ,int ,int*) ;
 int index_beginscan (int ,int ,int ,int ,int ) ;
 int index_endscan (int ) ;
 int index_getnext (int ,int ) ;
 int index_rescan (int ,int *,int ,int *,int ) ;

__attribute__((used)) static MinMaxResult
minmax_indexscan(Relation rel, Relation idxrel, AttrNumber attnum, Datum minmax[2])
{
 IndexScanDesc scan = index_beginscan(rel, idxrel, GetTransactionSnapshot(), 0, 0);
 HeapTuple tuple;
 bool isnull;
 bool nulls[2] = { 1, 1 };
 int n = 0;

 tuple = index_getnext(scan, BackwardScanDirection);

 if (HeapTupleIsValid(tuple))
 {
  minmax[n] = heap_getattr(tuple, attnum, RelationGetDescr(rel), &isnull);
  nulls[n++] = 0;
 }

 index_rescan(scan, ((void*)0), 0, ((void*)0), 0);
 tuple = index_getnext(scan, ForwardScanDirection);

 if (HeapTupleIsValid(tuple))
 {
  minmax[n] = heap_getattr(tuple, attnum, RelationGetDescr(rel), &isnull);
  nulls[n++] = 0;
 }

 index_endscan(scan);

 return (nulls[0] || nulls[1]) ? MINMAX_NO_TUPLES : MINMAX_FOUND;
}
