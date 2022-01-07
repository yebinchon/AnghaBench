
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fd; } ;
typedef int Relation ;
typedef int HeapTuple ;
typedef TYPE_1__ Chunk ;
typedef int CatalogSecurityContext ;


 int RelationGetDescr (int ) ;
 int chunk_formdata_make_tuple (int *,int ) ;
 int heap_freetuple (int ) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int ts_catalog_insert (int ,int ) ;
 int ts_catalog_restore_user (int *) ;

__attribute__((used)) static void
chunk_insert_relation(Relation rel, Chunk *chunk)
{
 HeapTuple new_tuple;

 CatalogSecurityContext sec_ctx;

 new_tuple = chunk_formdata_make_tuple(&chunk->fd, RelationGetDescr(rel));

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);
 ts_catalog_insert(rel, new_tuple);
 ts_catalog_restore_user(&sec_ctx);

 heap_freetuple(new_tuple);
}
