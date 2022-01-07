
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;


 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ;
 int BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int RowExclusiveLock ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int dimension_slice_scan_limit_internal (int ,int *,int,int ,int*,int ,int ,int ) ;
 int dimension_slice_tuple_delete ;

int
ts_dimension_slice_delete_by_dimension_id(int32 dimension_id, bool delete_constraints)
{
 ScanKeyData scankey[1];

 ScanKeyInit(&scankey[0],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(dimension_id));

 return dimension_slice_scan_limit_internal(
  DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
  scankey,
  1,
  dimension_slice_tuple_delete,
  &delete_constraints,
  0,
  RowExclusiveLock,
  CurrentMemoryContext);
}
