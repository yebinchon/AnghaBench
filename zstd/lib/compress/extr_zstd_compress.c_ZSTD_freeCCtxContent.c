
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ staticSize; int customMem; int workspace; int * mtctx; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int ZSTDMT_freeCCtx (int *) ;
 int ZSTD_clearAllDicts (TYPE_1__*) ;
 int ZSTD_cwksp_free (int *,int ) ;
 int assert (int) ;

__attribute__((used)) static void ZSTD_freeCCtxContent(ZSTD_CCtx* cctx)
{
    assert(cctx != ((void*)0));
    assert(cctx->staticSize == 0);
    ZSTD_clearAllDicts(cctx);



    ZSTD_cwksp_free(&cctx->workspace, cctx->customMem);
}
