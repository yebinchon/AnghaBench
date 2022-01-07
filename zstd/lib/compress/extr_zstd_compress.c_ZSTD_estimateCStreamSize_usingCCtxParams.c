
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {size_t windowLog; } ;
typedef TYPE_1__ ZSTD_compressionParameters ;
struct TYPE_8__ {scalar_t__ nbWorkers; } ;
typedef TYPE_2__ ZSTD_CCtx_params ;


 int GENERIC ;
 size_t MIN (int ,size_t) ;
 int RETURN_ERROR_IF (int,int ,char*) ;
 int ZSTD_BLOCKSIZE_MAX ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_compressBound (size_t const) ;
 size_t ZSTD_cwksp_alloc_size (size_t const) ;
 size_t ZSTD_estimateCCtxSize_usingCCtxParams (TYPE_2__ const*) ;
 TYPE_1__ ZSTD_getCParamsFromCCtxParams (TYPE_2__ const*,int ,int ) ;

size_t ZSTD_estimateCStreamSize_usingCCtxParams(const ZSTD_CCtx_params* params)
{
    RETURN_ERROR_IF(params->nbWorkers > 0, GENERIC, "Estimate CCtx size is supported for single-threaded compression only.");
    { ZSTD_compressionParameters const cParams =
                ZSTD_getCParamsFromCCtxParams(params, ZSTD_CONTENTSIZE_UNKNOWN, 0);
        size_t const CCtxSize = ZSTD_estimateCCtxSize_usingCCtxParams(params);
        size_t const blockSize = MIN(ZSTD_BLOCKSIZE_MAX, (size_t)1 << cParams.windowLog);
        size_t const inBuffSize = ((size_t)1 << cParams.windowLog) + blockSize;
        size_t const outBuffSize = ZSTD_compressBound(blockSize) + 1;
        size_t const streamingSize = ZSTD_cwksp_alloc_size(inBuffSize)
                                   + ZSTD_cwksp_alloc_size(outBuffSize);

        return CCtxSize + streamingSize;
    }
}
