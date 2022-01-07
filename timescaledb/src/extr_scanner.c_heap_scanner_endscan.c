
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int heap_scan; } ;
struct TYPE_5__ {TYPE_1__ scan; } ;
typedef TYPE_2__ InternalScannerCtx ;


 int heap_endscan (int ) ;

__attribute__((used)) static void
heap_scanner_endscan(InternalScannerCtx *ctx)
{
 heap_endscan(ctx->scan.heap_scan);
}
