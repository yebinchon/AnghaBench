
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * dictEnd; int * vBase; int * base; int * previousDstEnd; int stage; int expected; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int ZSTD_frameHeaderSize_min ;
 int ZSTDds_getFrameHeaderSize ;

__attribute__((used)) static size_t ZSTD_resetDCtx(ZSTD_DCtx* dctx)
{
    dctx->expected = ZSTD_frameHeaderSize_min;
    dctx->stage = ZSTDds_getFrameHeaderSize;
    dctx->previousDstEnd = ((void*)0);
    dctx->base = ((void*)0);
    dctx->vBase = ((void*)0);
    dctx->dictEnd = ((void*)0);
    return 0;
}
