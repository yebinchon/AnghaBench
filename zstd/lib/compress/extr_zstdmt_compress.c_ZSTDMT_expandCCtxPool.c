
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_6__ {int totalCCtx; int cMem; } ;
typedef TYPE_1__ ZSTDMT_CCtxPool ;


 TYPE_1__* ZSTDMT_createCCtxPool (int,int const) ;
 int ZSTDMT_freeCCtxPool (TYPE_1__*) ;

__attribute__((used)) static ZSTDMT_CCtxPool* ZSTDMT_expandCCtxPool(ZSTDMT_CCtxPool* srcPool,
                                              int nbWorkers)
{
    if (srcPool==((void*)0)) return ((void*)0);
    if (nbWorkers <= srcPool->totalCCtx) return srcPool;

    { ZSTD_customMem const cMem = srcPool->cMem;
        ZSTDMT_freeCCtxPool(srcPool);
        return ZSTDMT_createCCtxPool(nbWorkers, cMem);
    }
}
