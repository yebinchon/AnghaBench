
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {int dimension_slice_id; } ;
struct TYPE_16__ {TYPE_1__ fd; } ;
struct TYPE_15__ {scalar_t__ num_dimension_constraints; int num_constraints; } ;
struct TYPE_14__ {scalar_t__ num_slices; int ** slices; } ;
typedef int MemoryContext ;
typedef TYPE_2__ Hypercube ;
typedef int DimensionSlice ;
typedef TYPE_3__ ChunkConstraints ;
typedef TYPE_4__ ChunkConstraint ;


 int Assert (int) ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_4__* chunk_constraints_get (TYPE_3__*,int) ;
 int hypercube_is_sorted (TYPE_2__*) ;
 scalar_t__ is_dimension_constraint (TYPE_4__*) ;
 int * ts_dimension_slice_scan_by_id (int ,int ) ;
 TYPE_2__* ts_hypercube_alloc (scalar_t__) ;
 int ts_hypercube_slice_sort (TYPE_2__*) ;

Hypercube *
ts_hypercube_from_constraints(ChunkConstraints *constraints, MemoryContext mctx)
{
 Hypercube *hc;
 int i;
 MemoryContext old;

 old = MemoryContextSwitchTo(mctx);
 hc = ts_hypercube_alloc(constraints->num_dimension_constraints);
 MemoryContextSwitchTo(old);

 for (i = 0; i < constraints->num_constraints; i++)
 {
  ChunkConstraint *cc = chunk_constraints_get(constraints, i);

  if (is_dimension_constraint(cc))
  {
   DimensionSlice *slice;

   Assert(hc->num_slices < constraints->num_dimension_constraints);
   slice = ts_dimension_slice_scan_by_id(cc->fd.dimension_slice_id, mctx);
   Assert(slice != ((void*)0));
   hc->slices[hc->num_slices++] = slice;
  }
 }

 ts_hypercube_slice_sort(hc);

 Assert(hypercube_is_sorted(hc));

 return hc;
}
