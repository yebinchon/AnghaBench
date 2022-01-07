
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;
typedef int DimensionSlice ;


 int AccessShareLock ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ;
 int BTEqualStrategyNumber ;
 int BackwardScanDirection ;
 int CurrentMemoryContext ;
 int DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int dimension_slice_nth_tuple_found ;
 int dimension_slice_scan_limit_direction_internal (int ,int *,int,int ,int **,int,int ,int ,int ) ;

DimensionSlice *
ts_dimension_slice_nth_latest_slice(int32 dimension_id, int n)
{
 ScanKeyData scankey[1];
 int num_tuples;
 DimensionSlice *ret = ((void*)0);

 ScanKeyInit(&scankey[0],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(dimension_id));

 num_tuples = dimension_slice_scan_limit_direction_internal(
  DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
  scankey,
  1,
  dimension_slice_nth_tuple_found,
  &ret,
  n,
  BackwardScanDirection,
  AccessShareLock,
  CurrentMemoryContext);
 if (num_tuples < n)
  return ((void*)0);

 return ret;
}
