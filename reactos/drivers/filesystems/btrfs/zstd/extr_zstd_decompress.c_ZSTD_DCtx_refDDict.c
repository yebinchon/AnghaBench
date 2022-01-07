
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_DDict ;
struct TYPE_3__ {scalar_t__ streamStage; int const* ddict; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 size_t ERROR (int ) ;
 int stage_wrong ;
 scalar_t__ zdss_init ;

size_t ZSTD_DCtx_refDDict(ZSTD_DCtx* dctx, const ZSTD_DDict* ddict)
{
    if (dctx->streamStage != zdss_init) return ERROR(stage_wrong);
    dctx->ddict = ddict;
    return 0;
}
