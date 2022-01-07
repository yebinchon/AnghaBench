
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_parameters ;
typedef int ZSTD_CCtx_params ;
struct TYPE_4__ {int requestedParams; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int DEBUGLOG (int,char*,unsigned int) ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_assignParamsToCCtxParams (int *,int const*) ;
 size_t ZSTD_compressBegin_internal (TYPE_1__*,void const*,size_t,int ,int ,int *,int const*,int ,int ) ;
 int ZSTD_dct_auto ;
 int ZSTD_dtlm_fast ;
 int ZSTD_getParams_internal (int,int ,size_t) ;
 int ZSTDb_not_buffered ;

size_t ZSTD_compressBegin_usingDict(ZSTD_CCtx* cctx, const void* dict, size_t dictSize, int compressionLevel)
{
    ZSTD_parameters const params = ZSTD_getParams_internal(compressionLevel, ZSTD_CONTENTSIZE_UNKNOWN, dictSize);
    ZSTD_CCtx_params const cctxParams =
            ZSTD_assignParamsToCCtxParams(&cctx->requestedParams, &params);
    DEBUGLOG(4, "ZSTD_compressBegin_usingDict (dictSize=%u)", (unsigned)dictSize);
    return ZSTD_compressBegin_internal(cctx, dict, dictSize, ZSTD_dct_auto, ZSTD_dtlm_fast, ((void*)0),
                                       &cctxParams, ZSTD_CONTENTSIZE_UNKNOWN, ZSTDb_not_buffered);
}
