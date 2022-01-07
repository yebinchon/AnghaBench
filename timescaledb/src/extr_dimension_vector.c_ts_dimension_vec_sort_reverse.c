
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_slices; int slices; } ;
typedef TYPE_1__ DimensionVec ;
typedef int DimensionSlice ;


 int cmp_slices_reverse ;
 int qsort (int ,int ,int,int ) ;

DimensionVec *
ts_dimension_vec_sort_reverse(DimensionVec **vecptr)
{
 DimensionVec *vec = *vecptr;

 qsort(vec->slices, vec->num_slices, sizeof(DimensionSlice *), cmp_slices_reverse);

 return vec;
}
