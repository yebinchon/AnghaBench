
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int index_scan; } ;
struct TYPE_5__ {TYPE_1__ scan; } ;
typedef TYPE_2__ InternalScannerCtx ;


 int index_endscan (int ) ;

__attribute__((used)) static void
index_scanner_endscan(InternalScannerCtx *ctx)
{
 index_endscan(ctx->scan.index_scan);
}
