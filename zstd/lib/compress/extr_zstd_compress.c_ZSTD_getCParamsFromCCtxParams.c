
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ strategy; scalar_t__ targetLength; scalar_t__ minMatch; scalar_t__ searchLog; scalar_t__ chainLog; scalar_t__ hashLog; scalar_t__ windowLog; } ;
typedef TYPE_3__ ZSTD_compressionParameters ;
struct TYPE_12__ {scalar_t__ strategy; scalar_t__ targetLength; scalar_t__ minMatch; scalar_t__ searchLog; scalar_t__ chainLog; scalar_t__ hashLog; scalar_t__ windowLog; } ;
struct TYPE_11__ {scalar_t__ enableLdm; } ;
struct TYPE_14__ {scalar_t__ srcSizeHint; TYPE_2__ cParams; TYPE_1__ ldmParams; int compressionLevel; } ;
typedef TYPE_4__ ZSTD_CCtx_params ;
typedef scalar_t__ U64 ;


 scalar_t__ ZSTD_CONTENTSIZE_UNKNOWN ;
 scalar_t__ ZSTD_LDM_DEFAULT_WINDOW_LOG ;
 TYPE_3__ ZSTD_adjustCParams_internal (TYPE_3__,scalar_t__,size_t) ;
 int ZSTD_checkCParams (TYPE_3__) ;
 TYPE_3__ ZSTD_getCParams_internal (int ,scalar_t__,size_t) ;
 int assert (int) ;

ZSTD_compressionParameters ZSTD_getCParamsFromCCtxParams(
        const ZSTD_CCtx_params* CCtxParams, U64 srcSizeHint, size_t dictSize)
{
    ZSTD_compressionParameters cParams;
    if (srcSizeHint == ZSTD_CONTENTSIZE_UNKNOWN && CCtxParams->srcSizeHint > 0) {
      srcSizeHint = CCtxParams->srcSizeHint;
    }
    cParams = ZSTD_getCParams_internal(CCtxParams->compressionLevel, srcSizeHint, dictSize);
    if (CCtxParams->ldmParams.enableLdm) cParams.windowLog = ZSTD_LDM_DEFAULT_WINDOW_LOG;
    if (CCtxParams->cParams.windowLog) cParams.windowLog = CCtxParams->cParams.windowLog;
    if (CCtxParams->cParams.hashLog) cParams.hashLog = CCtxParams->cParams.hashLog;
    if (CCtxParams->cParams.chainLog) cParams.chainLog = CCtxParams->cParams.chainLog;
    if (CCtxParams->cParams.searchLog) cParams.searchLog = CCtxParams->cParams.searchLog;
    if (CCtxParams->cParams.minMatch) cParams.minMatch = CCtxParams->cParams.minMatch;
    if (CCtxParams->cParams.targetLength) cParams.targetLength = CCtxParams->cParams.targetLength;
    if (CCtxParams->cParams.strategy) cParams.strategy = CCtxParams->cParams.strategy;
    assert(!ZSTD_checkCParams(cParams));

    return ZSTD_adjustCParams_internal(cParams, srcSizeHint, dictSize);
}
