
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int requestedParams; } ;
typedef TYPE_1__ ZSTD_CStream ;
typedef unsigned long long U64 ;


 int ZSTD_CCtxParams_init (int *,int) ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_initCStream_internal (TYPE_1__*,int *,int ,int *,int ,unsigned long long const) ;

size_t ZSTD_initCStream_srcSize(ZSTD_CStream* zcs, int compressionLevel, unsigned long long pss)
{
    U64 const pledgedSrcSize = (pss==0) ? ZSTD_CONTENTSIZE_UNKNOWN : pss;
    ZSTD_CCtxParams_init(&zcs->requestedParams, compressionLevel);
    return ZSTD_initCStream_internal(zcs, ((void*)0), 0, ((void*)0), zcs->requestedParams, pledgedSrcSize);
}
