
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_slices; int slices; } ;
typedef TYPE_1__ Hypercube ;
typedef int DimensionSlice ;


 int cmp_slices_by_dimension_id ;
 int qsort (int ,int ,int,int ) ;

void
ts_hypercube_slice_sort(Hypercube *hc)
{
 qsort(hc->slices, hc->num_slices, sizeof(DimensionSlice *), cmp_slices_by_dimension_id);
}
