
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t Size ;
typedef int Relation ;
typedef int DimensionSlice ;
typedef int Catalog ;


 int DIMENSION_SLICE ;
 int RowExclusiveLock ;
 int catalog_get_table_id (int *,int ) ;
 int dimension_slice_insert_relation (int ,int *) ;
 int heap_close (int ,int ) ;
 int heap_open (int ,int ) ;
 int * ts_catalog_get () ;

void
ts_dimension_slice_insert_multi(DimensionSlice **slices, Size num_slices)
{
 Catalog *catalog = ts_catalog_get();
 Relation rel;
 Size i;

 rel = heap_open(catalog_get_table_id(catalog, DIMENSION_SLICE), RowExclusiveLock);

 for (i = 0; i < num_slices; i++)
  dimension_slice_insert_relation(rel, slices[i]);

 heap_close(rel, RowExclusiveLock);
}
