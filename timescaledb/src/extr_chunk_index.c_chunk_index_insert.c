
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Relation ;
typedef int Catalog ;


 int CHUNK_INDEX ;
 int RowExclusiveLock ;
 int catalog_get_table_id (int *,int ) ;
 int chunk_index_insert_relation (int ,int ,char const*,int ,char const*) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int * ts_catalog_get () ;

__attribute__((used)) static bool
chunk_index_insert(int32 chunk_id, const char *chunk_index, int32 hypertable_id,
       const char *hypertable_index)
{
 Catalog *catalog = ts_catalog_get();
 Relation rel;
 bool result;

 rel = heap_open(catalog_get_table_id(catalog, CHUNK_INDEX), RowExclusiveLock);
 result =
  chunk_index_insert_relation(rel, chunk_id, chunk_index, hypertable_id, hypertable_index);
 heap_close(rel, RowExclusiveLock);

 return result;
}
