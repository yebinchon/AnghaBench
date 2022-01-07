
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int HeapScanDesc ;


 int ForwardScanDirection ;
 int GetActiveSnapshot () ;
 int HeapTupleIsValid (int ) ;
 int heap_beginscan (int ,int ,int ,int *) ;
 int heap_endscan (int ) ;
 int heap_getnext (int ,int ) ;

__attribute__((used)) static bool
relation_has_tuples(Relation rel)
{
 HeapScanDesc scandesc = heap_beginscan(rel, GetActiveSnapshot(), 0, ((void*)0));
 bool hastuples = HeapTupleIsValid(heap_getnext(scandesc, ForwardScanDirection));

 heap_endscan(scandesc);
 return hastuples;
}
