
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_4__ {scalar_t__ num_slices; int capacity; } ;
typedef TYPE_1__ DimensionVec ;


 TYPE_1__* dimension_vec_expand (int *,int ) ;

DimensionVec *
ts_dimension_vec_create(int32 initial_num_slices)
{
 DimensionVec *vec = dimension_vec_expand(((void*)0), initial_num_slices);

 vec->capacity = initial_num_slices;
 vec->num_slices = 0;

 return vec;
}
