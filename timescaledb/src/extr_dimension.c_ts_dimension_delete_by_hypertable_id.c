
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;


 int Anum_dimension_hypertable_id_column_name_idx_hypertable_id ;
 int BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int DIMENSION_HYPERTABLE_ID_COLUMN_NAME_IDX ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int dimension_scan_internal (int *,int,int ,int*,int ,int ,int ,int ) ;
 int dimension_tuple_delete ;

int
ts_dimension_delete_by_hypertable_id(int32 hypertable_id, bool delete_slices)
{
 ScanKeyData scankey[1];


 ScanKeyInit(&scankey[0],
    Anum_dimension_hypertable_id_column_name_idx_hypertable_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(hypertable_id));

 return dimension_scan_internal(scankey,
           1,
           dimension_tuple_delete,
           &delete_slices,
           0,
           DIMENSION_HYPERTABLE_ID_COLUMN_NAME_IDX,
           RowExclusiveLock,
           CurrentMemoryContext);
}
