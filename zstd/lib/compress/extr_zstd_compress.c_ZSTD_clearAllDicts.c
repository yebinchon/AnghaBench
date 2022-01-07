
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int cdict; int dictBuffer; } ;
struct TYPE_4__ {int * cdict; TYPE_2__ prefixDict; TYPE_2__ localDict; int customMem; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int ZSTD_free (int ,int ) ;
 int ZSTD_freeCDict (int ) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static void ZSTD_clearAllDicts(ZSTD_CCtx* cctx)
{
    ZSTD_free(cctx->localDict.dictBuffer, cctx->customMem);
    ZSTD_freeCDict(cctx->localDict.cdict);
    memset(&cctx->localDict, 0, sizeof(cctx->localDict));
    memset(&cctx->prefixDict, 0, sizeof(cctx->prefixDict));
    cctx->cdict = ((void*)0);
}
