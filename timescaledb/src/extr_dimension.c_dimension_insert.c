
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int regproc ;
typedef int int64 ;
typedef int int32 ;
typedef int int16 ;
typedef int Relation ;
typedef int Oid ;
typedef int Name ;
typedef int Catalog ;


 int DIMENSION ;
 int RowExclusiveLock ;
 int catalog_get_table_id (int *,int ) ;
 int dimension_insert_relation (int ,int ,int ,int ,int ,int ,int ) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int * ts_catalog_get () ;

__attribute__((used)) static int32
dimension_insert(int32 hypertable_id, Name colname, Oid coltype, int16 num_slices,
     regproc partitioning_func, int64 interval_length)
{
 Catalog *catalog = ts_catalog_get();
 Relation rel;
 int32 dimension_id;

 rel = heap_open(catalog_get_table_id(catalog, DIMENSION), RowExclusiveLock);
 dimension_id = dimension_insert_relation(rel,
            hypertable_id,
            colname,
            coltype,
            num_slices,
            partitioning_func,
            interval_length);
 heap_close(rel, RowExclusiveLock);
 return dimension_id;
}
