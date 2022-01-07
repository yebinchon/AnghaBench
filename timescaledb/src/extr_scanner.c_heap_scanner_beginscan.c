
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int heap_scan; } ;
struct TYPE_8__ {TYPE_2__ scan; int tablerel; TYPE_1__* sctx; } ;
struct TYPE_6__ {int scankey; int nkeys; } ;
typedef TYPE_1__ ScannerCtx ;
typedef TYPE_2__ ScanDesc ;
typedef TYPE_3__ InternalScannerCtx ;


 int SnapshotSelf ;
 int heap_beginscan (int ,int ,int ,int ) ;

__attribute__((used)) static ScanDesc
heap_scanner_beginscan(InternalScannerCtx *ctx)
{
 ScannerCtx *sctx = ctx->sctx;

 ctx->scan.heap_scan = heap_beginscan(ctx->tablerel, SnapshotSelf, sctx->nkeys, sctx->scankey);
 return ctx->scan;
}
