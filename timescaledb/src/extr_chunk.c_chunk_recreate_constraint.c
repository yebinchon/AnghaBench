
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int table_id; TYPE_1__* constraints; } ;
struct TYPE_5__ {int num_constraints; int * constraints; } ;
typedef int ChunkScanCtx ;
typedef int ChunkResult ;
typedef TYPE_1__ ChunkConstraints ;
typedef TYPE_2__ Chunk ;


 int CHUNK_PROCESSED ;
 int chunk_fill_stub (TYPE_2__*,int) ;
 int ts_chunk_constraint_recreate (int *,int ) ;

__attribute__((used)) static ChunkResult
chunk_recreate_constraint(ChunkScanCtx *ctx, Chunk *chunk)
{
 ChunkConstraints *ccs = chunk->constraints;
 int i;

 chunk_fill_stub(chunk, 0);

 for (i = 0; i < ccs->num_constraints; i++)
  ts_chunk_constraint_recreate(&ccs->constraints[i], chunk->table_id);

 return CHUNK_PROCESSED;
}
