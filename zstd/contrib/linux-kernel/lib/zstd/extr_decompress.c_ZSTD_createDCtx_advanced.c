
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int customMem ;
struct TYPE_8__ {int customFree; int customAlloc; } ;
typedef TYPE_1__ ZSTD_customMem ;
struct TYPE_9__ {int customMem; } ;
typedef TYPE_2__ ZSTD_DCtx ;


 int ZSTD_decompressBegin (TYPE_2__*) ;
 scalar_t__ ZSTD_malloc (int,TYPE_1__) ;
 int memcpy (int *,TYPE_1__*,int) ;

ZSTD_DCtx *ZSTD_createDCtx_advanced(ZSTD_customMem customMem)
{
 ZSTD_DCtx *dctx;

 if (!customMem.customAlloc || !customMem.customFree)
  return ((void*)0);

 dctx = (ZSTD_DCtx *)ZSTD_malloc(sizeof(ZSTD_DCtx), customMem);
 if (!dctx)
  return ((void*)0);
 memcpy(&dctx->customMem, &customMem, sizeof(customMem));
 ZSTD_decompressBegin(dctx);
 return dctx;
}
