
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int contentSizeFlag; } ;
struct TYPE_9__ {TYPE_1__ fParams; } ;
typedef TYPE_2__ ZSTD_parameters ;
typedef int ZSTD_CCtx_params ;
struct TYPE_10__ {int requestedParams; } ;
typedef TYPE_3__ ZSTD_CCtx ;


 int ZSTD_assignParamsToCCtxParams (int ,TYPE_2__ const) ;
 size_t ZSTD_compress_advanced_internal (TYPE_3__*,void*,size_t,void const*,size_t,void const*,size_t,int ) ;
 TYPE_2__ ZSTD_getParams (int,size_t,size_t) ;
 int assert (int) ;

size_t ZSTD_compress_usingDict(ZSTD_CCtx* cctx,
                               void* dst, size_t dstCapacity,
                         const void* src, size_t srcSize,
                         const void* dict, size_t dictSize,
                               int compressionLevel)
{
    ZSTD_parameters const params = ZSTD_getParams(compressionLevel, srcSize + (!srcSize), dict ? dictSize : 0);
    ZSTD_CCtx_params cctxParams = ZSTD_assignParamsToCCtxParams(cctx->requestedParams, params);
    assert(params.fParams.contentSizeFlag == 1);
    return ZSTD_compress_advanced_internal(cctx, dst, dstCapacity, src, srcSize, dict, dictSize, cctxParams);
}
