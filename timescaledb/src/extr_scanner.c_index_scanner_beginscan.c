
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int xs_want_itup; } ;
struct TYPE_9__ {TYPE_6__* index_scan; } ;
struct TYPE_10__ {TYPE_2__ scan; TYPE_1__* sctx; int indexrel; int tablerel; } ;
struct TYPE_8__ {int norderbys; int nkeys; int scankey; int want_itup; } ;
typedef TYPE_1__ ScannerCtx ;
typedef TYPE_2__ ScanDesc ;
typedef TYPE_3__ InternalScannerCtx ;


 int SnapshotSelf ;
 TYPE_6__* index_beginscan (int ,int ,int ,int ,int ) ;
 int index_rescan (TYPE_6__*,int ,int ,int *,int ) ;

__attribute__((used)) static ScanDesc
index_scanner_beginscan(InternalScannerCtx *ctx)
{
 ScannerCtx *sctx = ctx->sctx;

 ctx->scan.index_scan =
  index_beginscan(ctx->tablerel, ctx->indexrel, SnapshotSelf, sctx->nkeys, sctx->norderbys);
 ctx->scan.index_scan->xs_want_itup = ctx->sctx->want_itup;
 index_rescan(ctx->scan.index_scan, sctx->scankey, sctx->nkeys, ((void*)0), sctx->norderbys);
 return ctx->scan;
}
