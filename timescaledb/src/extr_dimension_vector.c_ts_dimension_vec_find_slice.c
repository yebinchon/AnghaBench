
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_4__ {scalar_t__ num_slices; int slices; } ;
typedef TYPE_1__ DimensionVec ;
typedef int DimensionSlice ;


 int Assert (int ) ;
 int ** bsearch (int *,int ,scalar_t__,int,int ) ;
 int cmp_coordinate_and_slice ;
 int dimension_vec_is_sorted (TYPE_1__*) ;

DimensionSlice *
ts_dimension_vec_find_slice(DimensionVec *vec, int64 coordinate)
{
 DimensionSlice **res;

 if (vec->num_slices == 0)
  return ((void*)0);

 Assert(dimension_vec_is_sorted(vec));

 res = bsearch(&coordinate,
      vec->slices,
      vec->num_slices,
      sizeof(DimensionSlice *),
      cmp_coordinate_and_slice);

 if (res == ((void*)0))
  return ((void*)0);

 return *res;
}
