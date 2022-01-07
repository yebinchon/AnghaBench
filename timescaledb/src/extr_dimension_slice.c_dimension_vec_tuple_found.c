
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int tuple; } ;
typedef TYPE_1__ TupleInfo ;
typedef int ScanTupleResult ;
typedef int DimensionVec ;
typedef int DimensionSlice ;


 int SCAN_CONTINUE ;
 int * dimension_slice_from_tuple (int ) ;
 int * ts_dimension_vec_add_slice (int **,int *) ;

__attribute__((used)) static ScanTupleResult
dimension_vec_tuple_found(TupleInfo *ti, void *data)
{
 DimensionVec **slices = data;
 DimensionSlice *slice = dimension_slice_from_tuple(ti->tuple);

 *slices = ts_dimension_vec_add_slice(slices, slice);

 return SCAN_CONTINUE;
}
