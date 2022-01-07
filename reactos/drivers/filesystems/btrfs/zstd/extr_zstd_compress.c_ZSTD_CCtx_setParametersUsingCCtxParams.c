
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_CCtx_params ;
struct TYPE_3__ {scalar_t__ streamStage; int requestedParams; scalar_t__ cdict; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int DEBUGLOG (int,char*) ;
 size_t ERROR (int ) ;
 int stage_wrong ;
 scalar_t__ zcss_init ;

size_t ZSTD_CCtx_setParametersUsingCCtxParams(
        ZSTD_CCtx* cctx, const ZSTD_CCtx_params* params)
{
    DEBUGLOG(4, "ZSTD_CCtx_setParametersUsingCCtxParams");
    if (cctx->streamStage != zcss_init) return ERROR(stage_wrong);
    if (cctx->cdict) return ERROR(stage_wrong);

    cctx->requestedParams = *params;
    return 0;
}
