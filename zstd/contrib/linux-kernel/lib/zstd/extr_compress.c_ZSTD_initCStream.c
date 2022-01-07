
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;
typedef int ZSTD_customMem ;
typedef int ZSTD_CStream ;


 int * ZSTD_createCStream_advanced (int const) ;
 size_t ZSTD_initCStream_advanced (int * const,int *,int ,int ,unsigned long long) ;
 int ZSTD_initStack (void*,size_t) ;
 scalar_t__ ZSTD_isError (size_t const) ;

ZSTD_CStream *ZSTD_initCStream(ZSTD_parameters params, unsigned long long pledgedSrcSize, void *workspace, size_t workspaceSize)
{
 ZSTD_customMem const stackMem = ZSTD_initStack(workspace, workspaceSize);
 ZSTD_CStream *const zcs = ZSTD_createCStream_advanced(stackMem);
 if (zcs) {
  size_t const code = ZSTD_initCStream_advanced(zcs, ((void*)0), 0, params, pledgedSrcSize);
  if (ZSTD_isError(code)) {
   return ((void*)0);
  }
 }
 return zcs;
}
