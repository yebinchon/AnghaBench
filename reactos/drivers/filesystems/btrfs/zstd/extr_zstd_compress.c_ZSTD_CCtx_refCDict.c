
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ZSTD_CDict ;
struct TYPE_3__ {scalar_t__ streamStage; int prefixDict; int const* cdict; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 size_t ERROR (int ) ;
 int memset (int *,int ,int) ;
 int stage_wrong ;
 scalar_t__ zcss_init ;

size_t ZSTD_CCtx_refCDict(ZSTD_CCtx* cctx, const ZSTD_CDict* cdict)
{
    if (cctx->streamStage != zcss_init) return ERROR(stage_wrong);
    cctx->cdict = cdict;
    memset(&cctx->prefixDict, 0, sizeof(cctx->prefixDict));
    return 0;
}
