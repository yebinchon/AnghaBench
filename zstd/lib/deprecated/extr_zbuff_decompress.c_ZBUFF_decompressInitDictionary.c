
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZBUFF_DCtx ;


 size_t ZSTD_initDStream_usingDict (int *,void const*,size_t) ;

size_t ZBUFF_decompressInitDictionary(ZBUFF_DCtx* zbd, const void* dict, size_t dictSize)
{
    return ZSTD_initDStream_usingDict(zbd, dict, dictSize);
}
