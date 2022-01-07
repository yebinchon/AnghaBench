
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_14__ {scalar_t__ id; scalar_t__ aligned; } ;
struct TYPE_19__ {TYPE_1__ fd; } ;
struct TYPE_18__ {scalar_t__ num_slices; int * slices; } ;
struct TYPE_17__ {int num_slices; int * slices; } ;
struct TYPE_16__ {int num_dimensions; TYPE_6__* dimensions; } ;
struct TYPE_15__ {int * coordinates; } ;
typedef TYPE_2__ Point ;
typedef TYPE_3__ Hyperspace ;
typedef TYPE_4__ Hypercube ;
typedef TYPE_5__ DimensionVec ;
typedef TYPE_6__ Dimension ;


 int Assert (int) ;
 int hypercube_is_sorted (TYPE_4__*) ;
 int ts_dimension_calculate_default_slice (TYPE_6__*,int ) ;
 int ts_dimension_slice_scan_for_existing (int ) ;
 TYPE_5__* ts_dimension_slice_scan_limit (scalar_t__,int ,int) ;
 TYPE_4__* ts_hypercube_alloc (int) ;

Hypercube *
ts_hypercube_calculate_from_point(Hyperspace *hs, Point *p)
{
 Hypercube *cube;
 int i;

 cube = ts_hypercube_alloc(hs->num_dimensions);


 for (i = 0; i < hs->num_dimensions; i++)
 {
  Dimension *dim = &hs->dimensions[i];
  int64 value = p->coordinates[i];
  bool found = 0;


  Assert(i == 0 || dim->fd.id > hs->dimensions[i - 1].fd.id);





  if (dim->fd.aligned)
  {
   DimensionVec *vec;

   vec = ts_dimension_slice_scan_limit(dim->fd.id, value, 1);

   if (vec->num_slices > 0)
   {
    cube->slices[i] = vec->slices[0];
    found = 1;
   }
  }

  if (!found)
  {




   cube->slices[i] = ts_dimension_calculate_default_slice(dim, value);






   ts_dimension_slice_scan_for_existing(cube->slices[i]);
  }
 }

 cube->num_slices = hs->num_dimensions;

 Assert(hypercube_is_sorted(cube));

 return cube;
}
