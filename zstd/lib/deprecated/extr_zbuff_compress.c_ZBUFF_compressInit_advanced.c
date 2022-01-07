
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_parameters ;
typedef int ZBUFF_CCtx ;


 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_initCStream_advanced (int *,void const*,size_t,int ,unsigned long long) ;

size_t ZBUFF_compressInit_advanced(ZBUFF_CCtx* zbc,
                                   const void* dict, size_t dictSize,
                                   ZSTD_parameters params, unsigned long long pledgedSrcSize)
{
    if (pledgedSrcSize==0) pledgedSrcSize = ZSTD_CONTENTSIZE_UNKNOWN;
    return ZSTD_initCStream_advanced(zbc, dict, dictSize, params, pledgedSrcSize);
}
