
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int customFree; int customAlloc; } ;
typedef TYPE_1__ ZSTD_customMem ;
struct TYPE_11__ {int * cctx; int customMem; } ;
typedef TYPE_2__ ZSTD_CStream ;


 int * ZSTD_createCCtx_advanced (TYPE_1__) ;
 int ZSTD_freeCStream (TYPE_2__*) ;
 scalar_t__ ZSTD_malloc (int,TYPE_1__) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int memset (TYPE_2__*,int ,int) ;

ZSTD_CStream *ZSTD_createCStream_advanced(ZSTD_customMem customMem)
{
 ZSTD_CStream *zcs;

 if (!customMem.customAlloc || !customMem.customFree)
  return ((void*)0);

 zcs = (ZSTD_CStream *)ZSTD_malloc(sizeof(ZSTD_CStream), customMem);
 if (zcs == ((void*)0))
  return ((void*)0);
 memset(zcs, 0, sizeof(ZSTD_CStream));
 memcpy(&zcs->customMem, &customMem, sizeof(ZSTD_customMem));
 zcs->cctx = ZSTD_createCCtx_advanced(customMem);
 if (zcs->cctx == ((void*)0)) {
  ZSTD_freeCStream(zcs);
  return ((void*)0);
 }
 return zcs;
}
