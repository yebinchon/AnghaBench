
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_cParameter ;
struct TYPE_3__ {scalar_t__ streamStage; int cParamsChanged; int requestedParams; int cdict; int staticSize; } ;
typedef TYPE_1__ ZSTD_CCtx ;
typedef int U32 ;


 int DEBUGLOG (int,char*,int ,unsigned int) ;
 size_t ERROR (int ) ;
 size_t ZSTD_CCtxParam_setParameter (int *,int,unsigned int) ;
 scalar_t__ ZSTD_isUpdateAuthorized (int) ;
 int parameter_unsupported ;
 int stage_wrong ;
 scalar_t__ zcss_init ;

size_t ZSTD_CCtx_setParameter(ZSTD_CCtx* cctx, ZSTD_cParameter param, unsigned value)
{
    DEBUGLOG(4, "ZSTD_CCtx_setParameter (%u, %u)", (U32)param, value);
    if (cctx->streamStage != zcss_init) {
        if (ZSTD_isUpdateAuthorized(param)) {
            cctx->cParamsChanged = 1;
        } else {
            return ERROR(stage_wrong);
    } }

    switch(param)
    {
    case 140 :
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 147:
        if (cctx->cdict) return ERROR(stage_wrong);
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 128:
    case 139:
    case 149:
    case 130:
    case 133:
    case 129:
    case 146:
        if (cctx->cdict) return ERROR(stage_wrong);
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 145:
    case 148:
    case 144:
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 141 :


        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 142:
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 132:
        if ((value>0) && cctx->staticSize) {
            return ERROR(parameter_unsupported);
        }
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 138:
    case 131:
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    case 143:
    case 135:
    case 134:
    case 137:
    case 136:
        if (cctx->cdict) return ERROR(stage_wrong);
        return ZSTD_CCtxParam_setParameter(&cctx->requestedParams, param, value);

    default: return ERROR(parameter_unsupported);
    }
}
