
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_3__ {size_t num_slices; int ** slices; } ;
typedef TYPE_1__ DimensionVec ;
typedef int DimensionSlice ;



DimensionSlice *
ts_dimension_vec_get(DimensionVec *vec, int32 index)
{
 if (index >= vec->num_slices)
  return ((void*)0);

 return vec->slices[index];
}
