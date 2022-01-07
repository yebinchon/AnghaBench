
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int HeapTuple ;
typedef int FormData_hypertable ;
typedef int CatalogSecurityContext ;


 int RelationGetDescr (int ) ;
 int heap_freetuple (int ) ;
 int hypertable_formdata_make_tuple (int *,int ) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_insert (int ,int ) ;
 int ts_catalog_restore_user (int *) ;

__attribute__((used)) static void
hypertable_insert_relation(Relation rel, FormData_hypertable *fd)
{
 HeapTuple new_tuple;
 CatalogSecurityContext sec_ctx;

 new_tuple = hypertable_formdata_make_tuple(fd, RelationGetDescr(rel));

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_insert(rel, new_tuple);
 ts_catalog_restore_user(&sec_ctx);
 heap_freetuple(new_tuple);
}
