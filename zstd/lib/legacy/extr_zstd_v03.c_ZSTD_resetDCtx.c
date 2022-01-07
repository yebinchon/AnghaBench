
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * base; int * previousDstEnd; scalar_t__ phase; int expected; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int ZSTD_frameHeaderSize ;

__attribute__((used)) static size_t ZSTD_resetDCtx(ZSTD_DCtx* dctx)
{
    dctx->expected = ZSTD_frameHeaderSize;
    dctx->phase = 0;
    dctx->previousDstEnd = ((void*)0);
    dctx->base = ((void*)0);
    return 0;
}
