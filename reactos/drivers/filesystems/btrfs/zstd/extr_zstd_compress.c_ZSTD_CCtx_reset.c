
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ pledgedSrcSizePlusOne; int streamStage; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int zcss_init ;

void ZSTD_CCtx_reset(ZSTD_CCtx* cctx)
{
    cctx->streamStage = zcss_init;
    cctx->pledgedSrcSizePlusOne = 0;
}
