
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ZSTD_parameters ;
struct TYPE_5__ {int const* cdict; } ;
typedef TYPE_1__ ZSTD_CStream ;
typedef int ZSTD_CDict ;


 int ZSTD_getParamsFromCDict (int const*) ;
 TYPE_1__* ZSTD_initCStream (int const,unsigned long long,void*,size_t) ;
 scalar_t__ ZSTD_isError (int ) ;
 int ZSTD_resetCStream_internal (TYPE_1__* const,unsigned long long) ;

ZSTD_CStream *ZSTD_initCStream_usingCDict(const ZSTD_CDict *cdict, unsigned long long pledgedSrcSize, void *workspace, size_t workspaceSize)
{
 ZSTD_parameters const params = ZSTD_getParamsFromCDict(cdict);
 ZSTD_CStream *const zcs = ZSTD_initCStream(params, pledgedSrcSize, workspace, workspaceSize);
 if (zcs) {
  zcs->cdict = cdict;
  if (ZSTD_isError(ZSTD_resetCStream_internal(zcs, pledgedSrcSize))) {
   return ((void*)0);
  }
 }
 return zcs;
}
