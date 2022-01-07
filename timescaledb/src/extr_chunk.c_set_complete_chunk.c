
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * data; int space; } ;
typedef TYPE_1__ ChunkScanCtx ;
typedef int ChunkResult ;
typedef int Chunk ;


 int CHUNK_DONE ;
 int CHUNK_IGNORED ;
 int CHUNK_PROCESSED ;
 scalar_t__ chunk_is_complete (int *,int ) ;

__attribute__((used)) static ChunkResult
set_complete_chunk(ChunkScanCtx *scanctx, Chunk *chunk)
{
 if (chunk_is_complete(chunk, scanctx->space))
 {
  scanctx->data = chunk;



  return CHUNK_DONE;

 }
 return CHUNK_IGNORED;
}
