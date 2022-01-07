
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int const* ddict; } ;
typedef TYPE_1__ ZSTD_DStream ;
typedef int ZSTD_DDict ;


 TYPE_1__* ZSTD_initDStream (size_t,void*,size_t) ;

ZSTD_DStream *ZSTD_initDStream_usingDDict(size_t maxWindowSize, const ZSTD_DDict *ddict, void *workspace, size_t workspaceSize)
{
 ZSTD_DStream *zds = ZSTD_initDStream(maxWindowSize, workspace, workspaceSize);
 if (zds) {
  zds->ddict = ddict;
 }
 return zds;
}
