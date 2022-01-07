
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_5__ {int id; } ;
struct TYPE_6__ {TYPE_1__ fd; } ;
typedef int DimensionVec ;
typedef TYPE_2__ DimensionSlice ;


 int * ts_dimension_vec_add_slice (int **,TYPE_2__*) ;
 int ts_dimension_vec_find_slice_index (int *,int ) ;

DimensionVec *
ts_dimension_vec_add_unique_slice(DimensionVec **vecptr, DimensionSlice *slice)
{
 DimensionVec *vec = *vecptr;

 int32 existing_slice_index = ts_dimension_vec_find_slice_index(vec, slice->fd.id);

 if (existing_slice_index == -1)
 {
  return ts_dimension_vec_add_slice(vecptr, slice);
 }
 return vec;
}
