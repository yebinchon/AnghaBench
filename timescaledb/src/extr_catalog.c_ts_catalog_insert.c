
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int HeapTuple ;


 int CMD_INSERT ;
 int CatalogTupleInsert (int ,int ) ;
 int CommandCounterIncrement () ;
 int RelationGetRelid (int ) ;
 int ts_catalog_invalidate_cache (int ,int ) ;

void
ts_catalog_insert(Relation rel, HeapTuple tuple)
{
 CatalogTupleInsert(rel, tuple);
 ts_catalog_invalidate_cache(RelationGetRelid(rel), CMD_INSERT);

 CommandCounterIncrement();
}
