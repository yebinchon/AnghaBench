
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int ItemPointer ;


 int CMD_DELETE ;
 int CatalogTupleDelete (int ,int ) ;
 int CommandCounterIncrement () ;
 int RelationGetRelid (int ) ;
 int ts_catalog_invalidate_cache (int ,int ) ;

void
ts_catalog_delete_tid(Relation rel, ItemPointer tid)
{
 CatalogTupleDelete(rel, tid);
 ts_catalog_invalidate_cache(RelationGetRelid(rel), CMD_DELETE);
 CommandCounterIncrement();
}
