
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Catalog ;
typedef int BgwPolicyReorder ;


 int BGW_POLICY_REORDER ;
 int RowExclusiveLock ;
 int catalog_get_table_id (int *,int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int ts_bgw_policy_reorder_insert_with_relation (int ,int *) ;
 int * ts_catalog_get () ;

void
ts_bgw_policy_reorder_insert(BgwPolicyReorder *policy)
{
 Catalog *catalog = ts_catalog_get();
 Relation rel = heap_open(catalog_get_table_id(catalog, BGW_POLICY_REORDER), RowExclusiveLock);

 ts_bgw_policy_reorder_insert_with_relation(rel, policy);
 heap_close(rel, RowExclusiveLock);
}
