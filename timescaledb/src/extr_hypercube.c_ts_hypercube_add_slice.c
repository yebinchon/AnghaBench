
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ dimension_id; } ;
struct TYPE_10__ {TYPE_1__ fd; } ;
struct TYPE_9__ {scalar_t__ capacity; scalar_t__ num_slices; TYPE_3__** slices; } ;
typedef TYPE_2__ Hypercube ;
typedef TYPE_3__ DimensionSlice ;


 int Assert (int) ;
 int hypercube_is_sorted (TYPE_2__*) ;
 int ts_hypercube_slice_sort (TYPE_2__*) ;

void
ts_hypercube_add_slice(Hypercube *hc, DimensionSlice *slice)
{
 Assert(hc->capacity > hc->num_slices);

 hc->slices[hc->num_slices++] = slice;


 if (hc->num_slices > 1 &&
  slice->fd.dimension_id < hc->slices[hc->num_slices - 2]->fd.dimension_id)
  ts_hypercube_slice_sort(hc);

 Assert(hypercube_is_sorted(hc));
}
