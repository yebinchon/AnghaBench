
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t varInds_t ;
struct TYPE_4__ {scalar_t__ cLevel; int dictBufferSize; int dictBuffer; int cctx; TYPE_1__* comprParams; } ;
struct TYPE_3__ {scalar_t__* vals; } ;
typedef TYPE_2__ BMK_initCCtxArgs ;


 size_t NUM_PARAMS ;
 scalar_t__ PARAM_UNSET ;
 int ZSTD_CCtx_loadDictionary (int ,int ,int ) ;
 int ZSTD_CCtx_reset (int ,int ) ;
 int ZSTD_CCtx_setParameter (int ,int ,scalar_t__) ;
 int ZSTD_c_compressionLevel ;
 int ZSTD_reset_session_and_parameters ;
 int * cctxSetParamTable ;

__attribute__((used)) static size_t local_initCCtx(void* payload) {
    const BMK_initCCtxArgs* ag = (const BMK_initCCtxArgs*)payload;
    varInds_t i;
    ZSTD_CCtx_reset(ag->cctx, ZSTD_reset_session_and_parameters);
    ZSTD_CCtx_setParameter(ag->cctx, ZSTD_c_compressionLevel, ag->cLevel);

    for(i = 0; i < NUM_PARAMS; i++) {
        if(ag->comprParams->vals[i] != PARAM_UNSET)
        ZSTD_CCtx_setParameter(ag->cctx, cctxSetParamTable[i], ag->comprParams->vals[i]);
    }
    ZSTD_CCtx_loadDictionary(ag->cctx, ag->dictBuffer, ag->dictBufferSize);

    return 0;
}
