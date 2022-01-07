
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int table_id; } ;
struct TYPE_8__ {scalar_t__ lockmode; int num_complete_chunks; TYPE_2__** data; int space; } ;
typedef TYPE_1__ ChunkScanCtx ;
typedef int ChunkResult ;
typedef TYPE_2__ Chunk ;


 int CHUNK_IGNORED ;
 int CHUNK_PROCESSED ;
 int LockRelationOid (int ,scalar_t__) ;
 scalar_t__ NoLock ;
 int chunk_fill_stub (TYPE_2__*,int) ;
 int chunk_is_complete (TYPE_2__*,int ) ;
 TYPE_2__** palloc (int) ;

__attribute__((used)) static ChunkResult
append_chunk(ChunkScanCtx *scanctx, Chunk *chunk)
{
 Chunk **chunks = scanctx->data;

 if (!chunk_is_complete(chunk, scanctx->space))
  return CHUNK_IGNORED;


 chunk_fill_stub(chunk, 0);

 if (scanctx->lockmode != NoLock)
  LockRelationOid(chunk->table_id, scanctx->lockmode);

 if (((void*)0) == chunks && scanctx->num_complete_chunks > 0)
  scanctx->data = chunks = palloc(sizeof(Chunk *) * scanctx->num_complete_chunks);

 if (scanctx->num_complete_chunks > 0)
  chunks[--scanctx->num_complete_chunks] = chunk;

 return CHUNK_PROCESSED;
}
