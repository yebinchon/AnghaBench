
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_dictLoadMethod_e ;
typedef int ZSTD_dictContentType_e ;
typedef int ZSTD_compressionParameters ;
struct TYPE_3__ {scalar_t__ streamStage; int * cdictLocal; int * cdict; int customMem; scalar_t__ pledgedSrcSizePlusOne; int requestedParams; scalar_t__ staticSize; } ;
typedef TYPE_1__ ZSTD_CCtx ;
typedef int U32 ;


 int DEBUGLOG (int,char*,int ) ;
 size_t ERROR (int ) ;
 int * ZSTD_createCDict_advanced (void const*,size_t,int ,int ,int const,int ) ;
 int ZSTD_freeCDict (int *) ;
 int ZSTD_getCParamsFromCCtxParams (int *,scalar_t__,size_t) ;
 int memory_allocation ;
 int stage_wrong ;
 scalar_t__ zcss_init ;

size_t ZSTD_CCtx_loadDictionary_advanced(
        ZSTD_CCtx* cctx, const void* dict, size_t dictSize,
        ZSTD_dictLoadMethod_e dictLoadMethod, ZSTD_dictContentType_e dictContentType)
{
    if (cctx->streamStage != zcss_init) return ERROR(stage_wrong);
    if (cctx->staticSize) return ERROR(memory_allocation);
    DEBUGLOG(4, "ZSTD_CCtx_loadDictionary_advanced (size: %u)", (U32)dictSize);
    ZSTD_freeCDict(cctx->cdictLocal);
    if (dict==((void*)0) || dictSize==0) {
        cctx->cdictLocal = ((void*)0);
        cctx->cdict = ((void*)0);
    } else {
        ZSTD_compressionParameters const cParams =
                ZSTD_getCParamsFromCCtxParams(&cctx->requestedParams, cctx->pledgedSrcSizePlusOne-1, dictSize);
        cctx->cdictLocal = ZSTD_createCDict_advanced(
                                dict, dictSize,
                                dictLoadMethod, dictContentType,
                                cParams, cctx->customMem);
        cctx->cdict = cctx->cdictLocal;
        if (cctx->cdictLocal == ((void*)0))
            return ERROR(memory_allocation);
    }
    return 0;
}
