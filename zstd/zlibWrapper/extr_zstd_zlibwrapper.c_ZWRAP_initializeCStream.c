
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {unsigned long long pledgedSrcSize; int * zbc; int compressionLevel; } ;
typedef TYPE_2__ ZWRAP_CCtx ;
struct TYPE_7__ {int strategy; int minMatch; int searchLog; int hashLog; int chainLog; int windowLog; } ;
struct TYPE_9__ {TYPE_1__ cParams; } ;
typedef TYPE_3__ ZSTD_parameters ;


 int LOG_WRAPPERC (char*,...) ;
 TYPE_3__ ZSTD_getParams (int ,unsigned long long,size_t) ;
 size_t ZSTD_initCStream_advanced (int *,void const*,size_t,TYPE_3__ const,unsigned long long) ;
 scalar_t__ ZSTD_isError (size_t) ;
 int Z_OK ;
 int Z_STREAM_ERROR ;

__attribute__((used)) static int ZWRAP_initializeCStream(ZWRAP_CCtx* zwc, const void* dict, size_t dictSize, unsigned long long pledgedSrcSize)
{
    LOG_WRAPPERC("- ZWRAP_initializeCStream=%p\n", zwc);
    if (zwc == ((void*)0) || zwc->zbc == ((void*)0)) return Z_STREAM_ERROR;

    if (!pledgedSrcSize) pledgedSrcSize = zwc->pledgedSrcSize;
    { ZSTD_parameters const params = ZSTD_getParams(zwc->compressionLevel, pledgedSrcSize, dictSize);
        size_t initErr;
        LOG_WRAPPERC("pledgedSrcSize=%d windowLog=%d chainLog=%d hashLog=%d searchLog=%d minMatch=%d strategy=%d\n",
                    (int)pledgedSrcSize, params.cParams.windowLog, params.cParams.chainLog, params.cParams.hashLog, params.cParams.searchLog, params.cParams.minMatch, params.cParams.strategy);
        initErr = ZSTD_initCStream_advanced(zwc->zbc, dict, dictSize, params, pledgedSrcSize);
        if (ZSTD_isError(initErr)) return Z_STREAM_ERROR;
    }

    return Z_OK;
}
