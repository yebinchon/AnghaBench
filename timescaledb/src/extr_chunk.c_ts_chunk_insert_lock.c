
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int LOCKMODE ;
typedef int Chunk ;
typedef int Catalog ;


 int CHUNK ;
 int catalog_get_table_id (int *,int ) ;
 int chunk_insert_relation (int ,int *) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int * ts_catalog_get () ;

void
ts_chunk_insert_lock(Chunk *chunk, LOCKMODE lock)
{
 Catalog *catalog = ts_catalog_get();
 Relation rel;

 rel = heap_open(catalog_get_table_id(catalog, CHUNK), lock);
 chunk_insert_relation(rel, chunk);
 heap_close(rel, lock);
}
