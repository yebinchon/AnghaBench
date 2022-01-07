
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_16__ {int cube; } ;
struct TYPE_15__ {TYPE_1__* point; TYPE_3__* space; TYPE_4__* data; } ;
struct TYPE_11__ {int id; int aligned; } ;
struct TYPE_14__ {TYPE_2__ fd; } ;
struct TYPE_13__ {int ** slices; } ;
struct TYPE_12__ {int num_dimensions; TYPE_5__* dimensions; } ;
struct TYPE_10__ {int * coordinates; } ;
typedef TYPE_3__ Hyperspace ;
typedef TYPE_4__ Hypercube ;
typedef int DimensionSlice ;
typedef TYPE_5__ Dimension ;
typedef TYPE_6__ ChunkScanCtx ;
typedef int ChunkResult ;
typedef TYPE_7__ Chunk ;


 int CHUNK_IGNORED ;
 int CHUNK_PROCESSED ;
 int ts_dimension_slice_cut (int *,int *,int ) ;
 scalar_t__ ts_dimension_slices_collide (int *,int *) ;
 int ts_dimension_slices_equal (int *,int *) ;
 int * ts_hypercube_get_slice_by_dimension_id (int ,int ) ;

__attribute__((used)) static ChunkResult
do_dimension_alignment(ChunkScanCtx *scanctx, Chunk *chunk)
{
 Hypercube *cube = scanctx->data;
 Hyperspace *space = scanctx->space;
 ChunkResult res = CHUNK_IGNORED;
 int i;

 for (i = 0; i < space->num_dimensions; i++)
 {
  Dimension *dim = &space->dimensions[i];
  DimensionSlice *chunk_slice, *cube_slice;
  int64 coord = scanctx->point->coordinates[i];

  if (!dim->fd.aligned)
   continue;





  chunk_slice = ts_hypercube_get_slice_by_dimension_id(chunk->cube, dim->fd.id);

  if (((void*)0) == chunk_slice)
   continue;

  cube_slice = cube->slices[i];





  if (!ts_dimension_slices_equal(cube_slice, chunk_slice) &&
   ts_dimension_slices_collide(cube_slice, chunk_slice))
  {
   ts_dimension_slice_cut(cube_slice, chunk_slice, coord);
   res = CHUNK_PROCESSED;
  }
 }

 return res;
}
