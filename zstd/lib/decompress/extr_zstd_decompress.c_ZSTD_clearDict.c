
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dictUses; int * ddict; int * ddictLocal; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int ZSTD_dont_use ;
 int ZSTD_freeDDict (int *) ;

__attribute__((used)) static void ZSTD_clearDict(ZSTD_DCtx* dctx)
{
    ZSTD_freeDDict(dctx->ddictLocal);
    dctx->ddictLocal = ((void*)0);
    dctx->ddict = ((void*)0);
    dctx->dictUses = ZSTD_dont_use;
}
