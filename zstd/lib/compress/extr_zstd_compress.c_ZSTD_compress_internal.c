
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_parameters ;
typedef int ZSTD_CCtx_params ;
struct TYPE_4__ {int requestedParams; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int DEBUGLOG (int,char*) ;
 int ZSTD_assignParamsToCCtxParams (int *,int const*) ;
 size_t ZSTD_compress_advanced_internal (TYPE_1__*,void*,size_t,void const*,size_t,void const*,size_t,int const*) ;

__attribute__((used)) static size_t ZSTD_compress_internal (ZSTD_CCtx* cctx,
                                      void* dst, size_t dstCapacity,
                                const void* src, size_t srcSize,
                                const void* dict,size_t dictSize,
                                const ZSTD_parameters* params)
{
    ZSTD_CCtx_params const cctxParams =
            ZSTD_assignParamsToCCtxParams(&cctx->requestedParams, params);
    DEBUGLOG(4, "ZSTD_compress_internal");
    return ZSTD_compress_advanced_internal(cctx,
                                           dst, dstCapacity,
                                           src, srcSize,
                                           dict, dictSize,
                                           &cctxParams);
}
