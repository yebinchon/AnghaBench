
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_5__ {int previousLegacyVersion; scalar_t__ legacyContext; struct TYPE_5__* inBuff; int customMem; int staticSize; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int RETURN_ERROR_IF (int ,int ,char*) ;
 int ZSTD_clearDict (TYPE_1__*) ;
 int ZSTD_free (TYPE_1__*,int const) ;
 int ZSTD_freeLegacyStreamContext (scalar_t__,int ) ;
 int memory_allocation ;

size_t ZSTD_freeDCtx(ZSTD_DCtx* dctx)
{
    if (dctx==((void*)0)) return 0;
    RETURN_ERROR_IF(dctx->staticSize, memory_allocation, "not compatible with static DCtx");
    { ZSTD_customMem const cMem = dctx->customMem;
        ZSTD_clearDict(dctx);
        ZSTD_free(dctx->inBuff, cMem);
        dctx->inBuff = ((void*)0);




        ZSTD_free(dctx, cMem);
        return 0;
    }
}
