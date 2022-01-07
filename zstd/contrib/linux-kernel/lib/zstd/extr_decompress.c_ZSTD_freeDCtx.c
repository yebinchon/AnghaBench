
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int customMem; } ;
typedef TYPE_1__ ZSTD_DCtx ;


 int ZSTD_free (TYPE_1__*,int ) ;

size_t ZSTD_freeDCtx(ZSTD_DCtx *dctx)
{
 if (dctx == ((void*)0))
  return 0;
 ZSTD_free(dctx, dctx->customMem);
 return 0;
}
