
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ streamStage; size_t maxWindowSize; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 size_t ERROR (int ) ;
 int stage_wrong ;
 scalar_t__ zdss_init ;

size_t ZSTD_DCtx_setMaxWindowSize(ZSTD_DCtx* dctx, size_t maxWindowSize)
{
    if (dctx->streamStage != zdss_init) return ERROR(stage_wrong);
    dctx->maxWindowSize = maxWindowSize;
    return 0;
}
