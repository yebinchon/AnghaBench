
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_dictContentType_e ;
struct TYPE_4__ {size_t dictSize; int dictContentType; void const* dict; } ;
struct TYPE_5__ {scalar_t__ streamStage; TYPE_1__ prefixDict; int * cdict; } ;
typedef TYPE_2__ ZSTD_CCtx ;


 size_t ERROR (int ) ;
 int stage_wrong ;
 scalar_t__ zcss_init ;

size_t ZSTD_CCtx_refPrefix_advanced(
        ZSTD_CCtx* cctx, const void* prefix, size_t prefixSize, ZSTD_dictContentType_e dictContentType)
{
    if (cctx->streamStage != zcss_init) return ERROR(stage_wrong);
    cctx->cdict = ((void*)0);
    cctx->prefixDict.dict = prefix;
    cctx->prefixDict.dictSize = prefixSize;
    cctx->prefixDict.dictContentType = dictContentType;
    return 0;
}
