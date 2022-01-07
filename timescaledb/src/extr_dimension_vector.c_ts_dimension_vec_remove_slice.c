
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t int32 ;
struct TYPE_3__ {size_t num_slices; int * slices; } ;
typedef TYPE_1__ DimensionVec ;
typedef int DimensionSlice ;


 int memmove (int *,int *,int) ;
 int ts_dimension_slice_free (int ) ;

void
ts_dimension_vec_remove_slice(DimensionVec **vecptr, int32 index)
{
 DimensionVec *vec = *vecptr;

 ts_dimension_slice_free(vec->slices[index]);
 memmove(vec->slices + index,
   vec->slices + (index + 1),
   sizeof(DimensionSlice *) * (vec->num_slices - index - 1));
 vec->num_slices--;
}
