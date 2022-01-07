
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_customMem ;
typedef int ZSTD_CCtx ;
struct TYPE_5__ {int totalCCtx; int availCCtx; int * cctx; int cMem; int poolMutex; } ;
typedef TYPE_1__ ZSTDMT_CCtxPool ;


 int DEBUGLOG (int,char*,int) ;
 int ZSTDMT_freeCCtxPool (TYPE_1__* const) ;
 scalar_t__ ZSTD_calloc (int,int ) ;
 int ZSTD_createCCtx_advanced (int ) ;
 int ZSTD_free (TYPE_1__* const,int ) ;
 scalar_t__ ZSTD_pthread_mutex_init (int *,int *) ;
 int assert (int) ;

__attribute__((used)) static ZSTDMT_CCtxPool* ZSTDMT_createCCtxPool(int nbWorkers,
                                              ZSTD_customMem cMem)
{
    ZSTDMT_CCtxPool* const cctxPool = (ZSTDMT_CCtxPool*) ZSTD_calloc(
        sizeof(ZSTDMT_CCtxPool) + (nbWorkers-1)*sizeof(ZSTD_CCtx*), cMem);
    assert(nbWorkers > 0);
    if (!cctxPool) return ((void*)0);
    if (ZSTD_pthread_mutex_init(&cctxPool->poolMutex, ((void*)0))) {
        ZSTD_free(cctxPool, cMem);
        return ((void*)0);
    }
    cctxPool->cMem = cMem;
    cctxPool->totalCCtx = nbWorkers;
    cctxPool->availCCtx = 1;
    cctxPool->cctx[0] = ZSTD_createCCtx_advanced(cMem);
    if (!cctxPool->cctx[0]) { ZSTDMT_freeCCtxPool(cctxPool); return ((void*)0); }
    DEBUGLOG(3, "cctxPool created, with %u workers", nbWorkers);
    return cctxPool;
}
