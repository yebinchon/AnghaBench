
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_slices; int * slices; } ;
typedef TYPE_1__ DimensionVec ;
typedef int ChunkScanCtx ;


 int CurrentMemoryContext ;
 int ts_chunk_constraint_scan_by_dimension_slice (int ,int *,int ) ;

__attribute__((used)) static inline void
dimension_slice_and_chunk_constraint_join(ChunkScanCtx *scanctx, DimensionVec *vec)
{
 int i;

 for (i = 0; i < vec->num_slices; i++)
 {




  ts_chunk_constraint_scan_by_dimension_slice(vec->slices[i], scanctx, CurrentMemoryContext);
 }
}
