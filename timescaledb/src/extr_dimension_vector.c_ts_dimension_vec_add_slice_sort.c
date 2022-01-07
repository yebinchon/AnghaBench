
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DimensionVec ;
typedef int DimensionSlice ;


 int * ts_dimension_vec_add_slice (int **,int *) ;
 int * ts_dimension_vec_sort (int **) ;

DimensionVec *
ts_dimension_vec_add_slice_sort(DimensionVec **vecptr, DimensionSlice *slice)
{
 DimensionVec *vec;

 *vecptr = vec = ts_dimension_vec_add_slice(vecptr, slice);
 return ts_dimension_vec_sort(vecptr);
}
