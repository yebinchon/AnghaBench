
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int64 ;
typedef int int32 ;
typedef int StrategyNumber ;
typedef int DimensionVec ;


 int DIMENSION_VEC_DEFAULT_SIZE ;
 int dimension_slice_scan_with_strategies (int ,int ,int ,int ,int ,int **,int ,int) ;
 int dimension_vec_tuple_found ;
 int * ts_dimension_vec_create (int) ;
 int * ts_dimension_vec_sort (int **) ;

DimensionVec *
ts_dimension_slice_scan_range_limit(int32 dimension_id, StrategyNumber start_strategy,
         int64 start_value, StrategyNumber end_strategy, int64 end_value,
         int limit)
{
 DimensionVec *slices = ts_dimension_vec_create(limit > 0 ? limit : DIMENSION_VEC_DEFAULT_SIZE);

 dimension_slice_scan_with_strategies(dimension_id,
           start_strategy,
           start_value,
           end_strategy,
           end_value,
           &slices,
           dimension_vec_tuple_found,
           limit);

 return ts_dimension_vec_sort(&slices);
}
