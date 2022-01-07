
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ** data; } ;
typedef TYPE_1__ ChunkScanCtx ;
typedef int ChunkResult ;
typedef int Chunk ;


 int CHUNK_PROCESSED ;
 int chunk_fill_stub (int *,int) ;

__attribute__((used)) static ChunkResult
chunk_scan_context_add_chunk(ChunkScanCtx *scanctx, Chunk *chunk)
{
 Chunk **chunks = (Chunk **) scanctx->data;

 chunk_fill_stub(chunk, 0);
 *chunks = chunk;
 scanctx->data = chunks + 1;
 return CHUNK_PROCESSED;
}
