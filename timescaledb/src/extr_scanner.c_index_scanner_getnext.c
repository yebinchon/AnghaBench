
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_11__ {int xs_itupdesc; int xs_itup; } ;
struct TYPE_8__ {int tuple; int ituple_desc; int ituple; } ;
struct TYPE_9__ {TYPE_6__* index_scan; } ;
struct TYPE_10__ {TYPE_2__ tinfo; TYPE_3__ scan; TYPE_1__* sctx; } ;
struct TYPE_7__ {int scandirection; } ;
typedef TYPE_4__ InternalScannerCtx ;


 int HeapTupleIsValid (int ) ;
 int index_getnext (TYPE_6__*,int ) ;

__attribute__((used)) static bool
index_scanner_getnext(InternalScannerCtx *ctx)
{
 ctx->tinfo.tuple = index_getnext(ctx->scan.index_scan, ctx->sctx->scandirection);
 ctx->tinfo.ituple = ctx->scan.index_scan->xs_itup;
 ctx->tinfo.ituple_desc = ctx->scan.index_scan->xs_itupdesc;
 return HeapTupleIsValid(ctx->tinfo.tuple);
}
