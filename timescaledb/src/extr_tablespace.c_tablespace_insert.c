
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int Relation ;
typedef int Catalog ;


 int RowExclusiveLock ;
 int TABLESPACE ;
 int catalog_get_table_id (int *,int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int tablespace_insert_relation (int ,int ,char const*) ;
 int * ts_catalog_get () ;

__attribute__((used)) static int32
tablespace_insert(int32 hypertable_id, const char *tspcname)
{
 Catalog *catalog = ts_catalog_get();
 Relation rel;
 int32 id;

 rel = heap_open(catalog_get_table_id(catalog, TABLESPACE), RowExclusiveLock);
 id = tablespace_insert_relation(rel, hypertable_id, tspcname);
 heap_close(rel, RowExclusiveLock);

 return id;
}
