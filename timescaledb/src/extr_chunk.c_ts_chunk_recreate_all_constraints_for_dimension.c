
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int num_slices; int * slices; } ;
typedef int Hyperspace ;
typedef TYPE_1__ DimensionVec ;
typedef int ChunkScanCtx ;


 int CurrentMemoryContext ;
 int chunk_recreate_constraint ;
 int chunk_scan_ctx_destroy (int *) ;
 int chunk_scan_ctx_foreach_chunk (int *,int ,int ) ;
 int chunk_scan_ctx_init (int *,int *,int *) ;
 int ts_chunk_constraint_scan_by_dimension_slice (int ,int *,int ) ;
 TYPE_1__* ts_dimension_slice_scan_by_dimension (int ,int ) ;

void
ts_chunk_recreate_all_constraints_for_dimension(Hyperspace *hs, int32 dimension_id)
{
 DimensionVec *slices;
 ChunkScanCtx chunkctx;
 int i;

 slices = ts_dimension_slice_scan_by_dimension(dimension_id, 0);

 if (((void*)0) == slices)
  return;

 chunk_scan_ctx_init(&chunkctx, hs, ((void*)0));

 for (i = 0; i < slices->num_slices; i++)
  ts_chunk_constraint_scan_by_dimension_slice(slices->slices[i],
             &chunkctx,
             CurrentMemoryContext);

 chunk_scan_ctx_foreach_chunk(&chunkctx, chunk_recreate_constraint, 0);
 chunk_scan_ctx_destroy(&chunkctx);
}
