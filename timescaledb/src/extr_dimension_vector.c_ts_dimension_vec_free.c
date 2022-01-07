
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num_slices; int * slices; } ;
typedef TYPE_1__ DimensionVec ;


 int pfree (TYPE_1__*) ;
 int ts_dimension_slice_free (int ) ;

void
ts_dimension_vec_free(DimensionVec *vec)
{
 int i;

 for (i = 0; i < vec->num_slices; i++)
  ts_dimension_slice_free(vec->slices[i]);
 pfree(vec);
}
