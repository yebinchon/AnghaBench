
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * data; } ;
typedef TYPE_1__ ChunkScanCtx ;
typedef int Chunk ;


 int Assert (int) ;
 int chunk_scan_ctx_foreach_chunk (TYPE_1__*,int ,int) ;
 int set_complete_chunk ;

__attribute__((used)) static Chunk *
chunk_scan_ctx_get_chunk(ChunkScanCtx *ctx)
{
 ctx->data = ((void*)0);
 chunk_scan_ctx_foreach_chunk(ctx, set_complete_chunk, 1);


 return ctx->data;
}
