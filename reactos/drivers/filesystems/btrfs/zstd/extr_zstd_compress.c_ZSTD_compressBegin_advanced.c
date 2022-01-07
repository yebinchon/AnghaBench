
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_parameters ;
typedef int ZSTD_CCtx_params ;
struct TYPE_4__ {int requestedParams; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int ZSTD_assignParamsToCCtxParams (int ,int ) ;
 size_t ZSTD_compressBegin_advanced_internal (TYPE_1__*,void const*,size_t,int ,int ,int *,int const,unsigned long long) ;
 int ZSTD_dct_auto ;
 int ZSTD_dtlm_fast ;

size_t ZSTD_compressBegin_advanced(ZSTD_CCtx* cctx,
                             const void* dict, size_t dictSize,
                                   ZSTD_parameters params, unsigned long long pledgedSrcSize)
{
    ZSTD_CCtx_params const cctxParams =
            ZSTD_assignParamsToCCtxParams(cctx->requestedParams, params);
    return ZSTD_compressBegin_advanced_internal(cctx,
                                            dict, dictSize, ZSTD_dct_auto, ZSTD_dtlm_fast,
                                            ((void*)0) ,
                                            cctxParams, pledgedSrcSize);
}
