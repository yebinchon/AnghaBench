
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ count; } ;
struct TYPE_8__ {TYPE_1__ tinfo; } ;
struct TYPE_7__ {scalar_t__ limit; } ;
typedef TYPE_2__ ScannerCtx ;
typedef TYPE_3__ InternalScannerCtx ;



__attribute__((used)) static inline bool
ts_scanner_limit_reached(ScannerCtx *ctx, InternalScannerCtx *ictx)
{
 return ctx->limit > 0 && ictx->tinfo.count >= ctx->limit;
}
