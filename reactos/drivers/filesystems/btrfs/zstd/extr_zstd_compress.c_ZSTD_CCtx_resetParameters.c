
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ streamStage; int requestedParams; int * cdict; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 size_t ERROR (int ) ;
 size_t ZSTD_CCtxParams_reset (int *) ;
 int stage_wrong ;
 scalar_t__ zcss_init ;

size_t ZSTD_CCtx_resetParameters(ZSTD_CCtx* cctx)
{
    if (cctx->streamStage != zcss_init) return ERROR(stage_wrong);
    cctx->cdict = ((void*)0);
    return ZSTD_CCtxParams_reset(&cctx->requestedParams);
}
