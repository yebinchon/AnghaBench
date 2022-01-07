
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int tablerel; TYPE_1__* sctx; } ;
struct TYPE_4__ {int lockmode; int table; } ;
typedef int Relation ;
typedef TYPE_2__ InternalScannerCtx ;


 int heap_open (int ,int ) ;

__attribute__((used)) static Relation
heap_scanner_open(InternalScannerCtx *ctx)
{
 ctx->tablerel = heap_open(ctx->sctx->table, ctx->sctx->lockmode);
 return ctx->tablerel;
}
