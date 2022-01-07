
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t windowLog; } ;
struct TYPE_6__ {scalar_t__ nbWorkers; TYPE_1__ cParams; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;


 size_t ERROR (int ) ;
 int GENERIC ;
 size_t MIN (int ,size_t) ;
 int ZSTD_BLOCKSIZE_MAX ;
 int ZSTD_compressBound (size_t const) ;
 size_t ZSTD_estimateCCtxSize_usingCCtxParams (TYPE_2__ const*) ;

size_t ZSTD_estimateCStreamSize_usingCCtxParams(const ZSTD_CCtx_params* params)
{
    if (params->nbWorkers > 0) { return ERROR(GENERIC); }
    { size_t const CCtxSize = ZSTD_estimateCCtxSize_usingCCtxParams(params);
        size_t const blockSize = MIN(ZSTD_BLOCKSIZE_MAX, (size_t)1 << params->cParams.windowLog);
        size_t const inBuffSize = ((size_t)1 << params->cParams.windowLog) + blockSize;
        size_t const outBuffSize = ZSTD_compressBound(blockSize) + 1;
        size_t const streamingSize = inBuffSize + outBuffSize;

        return CCtxSize + streamingSize;
    }
}
