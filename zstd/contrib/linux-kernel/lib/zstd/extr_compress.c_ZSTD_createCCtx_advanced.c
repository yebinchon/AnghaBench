
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int customFree; int customAlloc; } ;
typedef TYPE_1__ ZSTD_customMem ;
struct TYPE_8__ {TYPE_1__ customMem; } ;
typedef TYPE_2__ ZSTD_CCtx ;


 scalar_t__ ZSTD_malloc (int,TYPE_1__) ;
 int memset (TYPE_2__*,int ,int) ;

__attribute__((used)) static ZSTD_CCtx *ZSTD_createCCtx_advanced(ZSTD_customMem customMem)
{
 ZSTD_CCtx *cctx;
 if (!customMem.customAlloc || !customMem.customFree)
  return ((void*)0);
 cctx = (ZSTD_CCtx *)ZSTD_malloc(sizeof(ZSTD_CCtx), customMem);
 if (!cctx)
  return ((void*)0);
 memset(cctx, 0, sizeof(ZSTD_CCtx));
 cctx->customMem = customMem;
 return cctx;
}
