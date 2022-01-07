
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int requestedParams; } ;
typedef TYPE_1__ ZSTD_CStream ;


 int ZSTD_CCtxParams_init (int *,int) ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_initCStream_internal (TYPE_1__*,void const*,size_t,int *,int ,int ) ;

size_t ZSTD_initCStream_usingDict(ZSTD_CStream* zcs, const void* dict, size_t dictSize, int compressionLevel)
{
    ZSTD_CCtxParams_init(&zcs->requestedParams, compressionLevel);
    return ZSTD_initCStream_internal(zcs, dict, dictSize, ((void*)0), zcs->requestedParams, ZSTD_CONTENTSIZE_UNKNOWN);
}
