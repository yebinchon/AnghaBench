
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ staticSize; int * mtctx; int * cdictLocal; int * workSpace; int customMem; } ;
typedef TYPE_1__ ZSTD_CCtx ;


 int ZSTDMT_freeCCtx (int *) ;
 int ZSTD_free (int *,int ) ;
 int ZSTD_freeCDict (int *) ;
 int assert (int) ;

__attribute__((used)) static void ZSTD_freeCCtxContent(ZSTD_CCtx* cctx)
{
    assert(cctx != ((void*)0));
    assert(cctx->staticSize == 0);
    ZSTD_free(cctx->workSpace, cctx->customMem); cctx->workSpace = ((void*)0);
    ZSTD_freeCDict(cctx->cdictLocal); cctx->cdictLocal = ((void*)0);



}
