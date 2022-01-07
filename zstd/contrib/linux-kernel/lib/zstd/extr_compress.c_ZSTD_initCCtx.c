
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_customMem ;
struct TYPE_5__ {int opaque; } ;
struct TYPE_6__ {int workSpaceSize; TYPE_1__ customMem; int workSpace; } ;
typedef TYPE_2__ ZSTD_CCtx ;


 TYPE_2__* ZSTD_createCCtx_advanced (int const) ;
 int ZSTD_initStack (void*,size_t) ;
 int ZSTD_stackAllocAll (int ,int *) ;

ZSTD_CCtx *ZSTD_initCCtx(void *workspace, size_t workspaceSize)
{
 ZSTD_customMem const stackMem = ZSTD_initStack(workspace, workspaceSize);
 ZSTD_CCtx *cctx = ZSTD_createCCtx_advanced(stackMem);
 if (cctx) {
  cctx->workSpace = ZSTD_stackAllocAll(cctx->customMem.opaque, &cctx->workSpaceSize);
 }
 return cctx;
}
