
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int customFree; int customAlloc; } ;
typedef TYPE_1__ ZSTD_customMem ;
struct TYPE_11__ {int maxWindowSize; int stage; int * dctx; int customMem; } ;
typedef TYPE_2__ ZSTD_DStream ;


 int ZSTD_MAXWINDOWSIZE_DEFAULT ;
 int * ZSTD_createDCtx_advanced (TYPE_1__) ;
 int ZSTD_freeDStream (TYPE_2__*) ;
 scalar_t__ ZSTD_malloc (int,TYPE_1__) ;
 int memcpy (int *,TYPE_1__*,int) ;
 int memset (TYPE_2__*,int ,int) ;
 int zdss_init ;

__attribute__((used)) static ZSTD_DStream *ZSTD_createDStream_advanced(ZSTD_customMem customMem)
{
 ZSTD_DStream *zds;

 if (!customMem.customAlloc || !customMem.customFree)
  return ((void*)0);

 zds = (ZSTD_DStream *)ZSTD_malloc(sizeof(ZSTD_DStream), customMem);
 if (zds == ((void*)0))
  return ((void*)0);
 memset(zds, 0, sizeof(ZSTD_DStream));
 memcpy(&zds->customMem, &customMem, sizeof(ZSTD_customMem));
 zds->dctx = ZSTD_createDCtx_advanced(customMem);
 if (zds->dctx == ((void*)0)) {
  ZSTD_freeDStream(zds);
  return ((void*)0);
 }
 zds->stage = zdss_init;
 zds->maxWindowSize = ZSTD_MAXWINDOWSIZE_DEFAULT;
 return zds;
}
