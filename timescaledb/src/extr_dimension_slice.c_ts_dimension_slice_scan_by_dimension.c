
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32 ;
typedef int ScanKeyData ;
typedef int DimensionVec ;


 int AccessShareLock ;
 int Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id ;
 int BTEqualStrategyNumber ;
 int CurrentMemoryContext ;
 int DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX ;
 int DIMENSION_VEC_DEFAULT_SIZE ;
 int F_INT4EQ ;
 int Int32GetDatum (int ) ;
 int ScanKeyInit (int *,int ,int ,int ,int ) ;
 int dimension_slice_scan_limit_internal (int ,int *,int,int ,int **,int,int ,int ) ;
 int dimension_vec_tuple_found ;
 int * ts_dimension_vec_create (int) ;
 int * ts_dimension_vec_sort (int **) ;

DimensionVec *
ts_dimension_slice_scan_by_dimension(int32 dimension_id, int limit)
{
 ScanKeyData scankey[1];
 DimensionVec *slices = ts_dimension_vec_create(limit > 0 ? limit : DIMENSION_VEC_DEFAULT_SIZE);

 ScanKeyInit(&scankey[0],
    Anum_dimension_slice_dimension_id_range_start_range_end_idx_dimension_id,
    BTEqualStrategyNumber,
    F_INT4EQ,
    Int32GetDatum(dimension_id));

 dimension_slice_scan_limit_internal(DIMENSION_SLICE_DIMENSION_ID_RANGE_START_RANGE_END_IDX,
          scankey,
          1,
          dimension_vec_tuple_found,
          &slices,
          limit,
          AccessShareLock,
          CurrentMemoryContext);

 return ts_dimension_vec_sort(&slices);
}
