
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_constraints; int * constraints; } ;
typedef int Relation ;
typedef TYPE_1__ ChunkConstraints ;
typedef int CatalogSecurityContext ;
typedef int Catalog ;


 int CHUNK_CONSTRAINT ;
 int RowExclusiveLock ;
 int catalog_get_table_id (int *,int ) ;
 int chunk_constraint_insert_relation (int ,int *) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int ts_catalog_database_info_become_owner (int ,int *) ;
 int ts_catalog_database_info_get () ;
 int * ts_catalog_get () ;
 int ts_catalog_restore_user (int *) ;

__attribute__((used)) static void
chunk_constraints_insert(ChunkConstraints *ccs)
{
 Catalog *catalog = ts_catalog_get();
 CatalogSecurityContext sec_ctx;
 Relation rel;
 int i;

 rel = heap_open(catalog_get_table_id(catalog, CHUNK_CONSTRAINT), RowExclusiveLock);

 ts_catalog_database_info_become_owner(ts_catalog_database_info_get(), &sec_ctx);

 for (i = 0; i < ccs->num_constraints; i++)
  chunk_constraint_insert_relation(rel, &ccs->constraints[i]);

 ts_catalog_restore_user(&sec_ctx);
 heap_close(rel, RowExclusiveLock);
}
