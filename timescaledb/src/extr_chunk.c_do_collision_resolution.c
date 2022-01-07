
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int int64 ;
struct TYPE_15__ {int num_slices; int ** slices; } ;
struct TYPE_14__ {TYPE_7__* cube; } ;
struct TYPE_13__ {TYPE_1__* point; TYPE_2__* space; TYPE_3__* data; } ;
struct TYPE_12__ {int ** slices; } ;
struct TYPE_11__ {int num_dimensions; } ;
struct TYPE_10__ {int * coordinates; } ;
typedef TYPE_2__ Hyperspace ;
typedef TYPE_3__ Hypercube ;
typedef int DimensionSlice ;
typedef TYPE_4__ ChunkScanCtx ;
typedef int ChunkResult ;
typedef TYPE_5__ Chunk ;


 int Assert (int) ;
 int CHUNK_IGNORED ;
 int CHUNK_PROCESSED ;
 int ts_dimension_slice_cut (int *,int *,int ) ;
 scalar_t__ ts_dimension_slices_collide (int *,int *) ;
 int ts_dimension_slices_equal (int *,int *) ;
 int ts_hypercubes_collide (TYPE_3__*,TYPE_7__*) ;

__attribute__((used)) static ChunkResult
do_collision_resolution(ChunkScanCtx *scanctx, Chunk *chunk)
{
 Hypercube *cube = scanctx->data;
 Hyperspace *space = scanctx->space;
 ChunkResult res = CHUNK_IGNORED;
 int i;

 if (chunk->cube->num_slices != space->num_dimensions ||
  !ts_hypercubes_collide(cube, chunk->cube))
  return CHUNK_IGNORED;

 for (i = 0; i < space->num_dimensions; i++)
 {
  DimensionSlice *cube_slice = cube->slices[i];
  DimensionSlice *chunk_slice = chunk->cube->slices[i];
  int64 coord = scanctx->point->coordinates[i];





  if (!ts_dimension_slices_equal(cube_slice, chunk_slice) &&
   ts_dimension_slices_collide(cube_slice, chunk_slice))
  {
   ts_dimension_slice_cut(cube_slice, chunk_slice, coord);
   res = CHUNK_PROCESSED;





   if (!ts_hypercubes_collide(cube, chunk->cube))
    return res;
  }
 }

 Assert(!ts_hypercubes_collide(cube, chunk->cube));

 return res;
}
