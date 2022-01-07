
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nbWorkers; } ;
struct TYPE_5__ {int mtctx; TYPE_1__ appliedParams; } ;
typedef TYPE_2__ ZSTD_CCtx ;


 size_t ZSTDMT_toFlushNow (int ) ;

size_t ZSTD_toFlushNow(ZSTD_CCtx* cctx)
{





    (void)cctx;
    return 0;
}
