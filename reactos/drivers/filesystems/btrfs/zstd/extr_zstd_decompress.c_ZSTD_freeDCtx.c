
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_4__ {int previousLegacyVersion; scalar_t__ legacyContext; struct TYPE_4__* inBuff; int * ddictLocal; int customMem; scalar_t__ staticSize; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 size_t ERROR (int ) ;
 int ZSTD_free (TYPE_1__*,int const) ;
 int ZSTD_freeDDict (int *) ;
 int ZSTD_freeLegacyStreamContext (scalar_t__,int ) ;
 int memory_allocation ;

size_t ZSTD_freeDCtx(ZSTD_DCtx* dctx)
{
    if (dctx==((void*)0)) return 0;
    if (dctx->staticSize) return ERROR(memory_allocation);
    { ZSTD_customMem const cMem = dctx->customMem;
        ZSTD_freeDDict(dctx->ddictLocal);
        dctx->ddictLocal = ((void*)0);
        ZSTD_free(dctx->inBuff, cMem);
        dctx->inBuff = ((void*)0);




        ZSTD_free(dctx, cMem);
        return 0;
    }
}
