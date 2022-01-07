
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* sctx; int tablerel; } ;
struct TYPE_4__ {int lockmode; } ;
typedef TYPE_2__ InternalScannerCtx ;


 int heap_close (int ,int ) ;

__attribute__((used)) static void
heap_scanner_close(InternalScannerCtx *ctx)
{
 heap_close(ctx->tablerel, ctx->sctx->lockmode);
}
