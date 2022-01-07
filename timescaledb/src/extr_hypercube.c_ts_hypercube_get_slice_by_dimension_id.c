
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_7__ {int dimension_id; } ;
struct TYPE_9__ {TYPE_1__ fd; } ;
struct TYPE_8__ {int num_slices; int slices; } ;
typedef TYPE_2__ Hypercube ;
typedef TYPE_3__ DimensionSlice ;


 int Assert (int ) ;
 void* bsearch (void**,int ,int ,int,int ) ;
 int cmp_slices_by_dimension_id ;
 int hypercube_is_sorted (TYPE_2__*) ;

DimensionSlice *
ts_hypercube_get_slice_by_dimension_id(Hypercube *hc, int32 dimension_id)
{
 DimensionSlice slice = {
  .fd.dimension_id = dimension_id,
 };
 void *ptr = &slice;

 if (hc->num_slices == 0)
  return ((void*)0);

 Assert(hypercube_is_sorted(hc));

 ptr = bsearch(&ptr,
      hc->slices,
      hc->num_slices,
      sizeof(DimensionSlice *),
      cmp_slices_by_dimension_id);

 if (((void*)0) == ptr)
  return ((void*)0);

 return *((DimensionSlice **) ptr);
}
