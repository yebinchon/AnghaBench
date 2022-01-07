
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int htab; } ;
typedef TYPE_1__ ChunkScanCtx ;


 int hash_destroy (int ) ;

__attribute__((used)) static void
chunk_scan_ctx_destroy(ChunkScanCtx *ctx)
{
 hash_destroy(ctx->htab);
}
