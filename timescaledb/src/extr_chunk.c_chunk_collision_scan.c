
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_13__ {TYPE_1__* space; } ;
struct TYPE_10__ {int range_end; int range_start; int dimension_id; } ;
struct TYPE_12__ {TYPE_2__ fd; } ;
struct TYPE_11__ {TYPE_4__** slices; } ;
struct TYPE_9__ {int num_dimensions; } ;
typedef TYPE_3__ Hypercube ;
typedef int DimensionVec ;
typedef TYPE_4__ DimensionSlice ;
typedef TYPE_5__ ChunkScanCtx ;


 int dimension_slice_and_chunk_constraint_join (TYPE_5__*,int *) ;
 int * dimension_slice_collision_scan (int ,int ,int ) ;

__attribute__((used)) static void
chunk_collision_scan(ChunkScanCtx *scanctx, Hypercube *cube)
{
 int i;


 for (i = 0; i < scanctx->space->num_dimensions; i++)
 {
  DimensionVec *vec;
  DimensionSlice *slice = cube->slices[i];

  vec = dimension_slice_collision_scan(slice->fd.dimension_id,
            slice->fd.range_start,
            slice->fd.range_end);


  dimension_slice_and_chunk_constraint_join(scanctx, vec);
 }
}
