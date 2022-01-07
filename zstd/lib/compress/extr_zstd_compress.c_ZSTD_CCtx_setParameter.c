
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_cParameter ;
struct TYPE_3__ {scalar_t__ streamStage; int cParamsChanged; int requestedParams; int staticSize; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int DEBUGLOG (int,char*,int,int) ;
 int RETURN_ERROR (int ) ;
 int RETURN_ERROR_IF (int,int ,char*) ;
 size_t ZSTD_CCtxParams_setParameter (int *,int,int) ;
 scalar_t__ ZSTD_isUpdateAuthorized (int) ;
 int parameter_unsupported ;
 int stage_wrong ;
 scalar_t__ zcss_init ;

size_t ZSTD_CCtx_setParameter(ZSTD_CCtx* cctx, ZSTD_cParameter param, int value)
{
    DEBUGLOG(4, "ZSTD_CCtx_setParameter (%i, %i)", (int)param, value);
    if (cctx->streamStage != zcss_init) {
        if (ZSTD_isUpdateAuthorized(param)) {
            cctx->cParamsChanged = 1;
        } else {
            RETURN_ERROR(stage_wrong);
    } }

    switch(param)
    {
    case 136:
        RETURN_ERROR_IF((value!=0) && cctx->staticSize, parameter_unsupported,
                        "MT not compatible with static alloc");
        break;

    case 151:
    case 128:
    case 144:
    case 153:
    case 133:
    case 137:
    case 129:
    case 131:
    case 140:
    case 145:
    case 150:
    case 152:
    case 149:
    case 146:
    case 147:
    case 138:
    case 143:
    case 135:
    case 134:
    case 148:
    case 141:
    case 139:
    case 142:
    case 130:
    case 132:
        break;

    default: RETURN_ERROR(parameter_unsupported);
    }
    return ZSTD_CCtxParams_setParameter(&cctx->requestedParams, param, value);
}
