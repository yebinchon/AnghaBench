
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int int32 ;
typedef int ScanKeyData ;
typedef int ScanDirection ;
typedef int MemoryContext ;
typedef int DimensionVec ;


 int AccessShareLock ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start ;
 int BTEqualStrategyNumber ;
 int BTLessStrategyNumber ;
 int DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ;
 int DIMENSION_VEC_DEFAULT_SIZE ;
 int F_INT4EQ ;
 int F_INT8LT ;
 int Int32GetDatum (int ) ;
 int Int64GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int dimension_slice_scan_limit_direction_internal (int ,int *,int,int ,int **,int,int ,int ,int ) ;
 int dimension_vec_tuple_found ;
 int * ts_dimension_vec_create (int) ;
 int * ts_dimension_vec_sort (int **) ;

DimensionVec *
ts_dimension_slice_scan_by_dimension_before_point(int32 dimension_id, int64 point, int limit,
              ScanDirection scandir, MemoryContext mctx)
{
 ScanKeyData scankey[3];
 DimensionVec *slices = ts_dimension_vec_create(limit > 0 ? limit : DIMENSION_VEC_DEFAULT_SIZE);

 ScanKeyInit(&scankey[0],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(dimension_id));
 ScanKeyInit(&scankey[1],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_start,
    BTLessStrategyNumber,
    F_INT8LT,
    Int64GetDatum(point));
 ScanKeyInit(&scankey[2],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_range_end,
    BTLessStrategyNumber,
    F_INT8LT,
    Int64GetDatum(point));

 dimension_slice_scan_limit_direction_internal(
  DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
  scankey,
  3,
  dimension_vec_tuple_found,
  &slices,
  limit,
  scandir,
  AccessShareLock,
  mctx);

 return ts_dimension_vec_sort(&slices);
}
