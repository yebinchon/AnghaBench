
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int index; } ;
typedef TYPE_1__ ScannerCtx ;
typedef int Scanner ;


 scalar_t__ OidIsValid (int ) ;
 size_t ScannerTypeHeap ;
 size_t ScannerTypeIndex ;
 int * scanners ;

__attribute__((used)) static inline Scanner *
scanner_ctx_get_scanner(ScannerCtx *ctx)
{
 if (OidIsValid(ctx->index))
  return &scanners[ScannerTypeIndex];
 else
  return &scanners[ScannerTypeHeap];
}
