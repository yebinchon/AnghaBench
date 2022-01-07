
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_compressionParameters ;
typedef int ZSTD_CDict ;


 int ZSTD_CONTENTSIZE_UNKNOWN ;
 int * ZSTD_createCDict_advanced (void const*,size_t,int ,int ,int ,int ) ;
 int ZSTD_dct_auto ;
 int ZSTD_defaultCMem ;
 int ZSTD_dlm_byRef ;
 int ZSTD_getCParams_internal (int,int ,size_t) ;

ZSTD_CDict* ZSTD_createCDict_byReference(const void* dict, size_t dictSize, int compressionLevel)
{
    ZSTD_compressionParameters cParams = ZSTD_getCParams_internal(compressionLevel, ZSTD_CONTENTSIZE_UNKNOWN, dictSize);
    return ZSTD_createCDict_advanced(dict, dictSize,
                                     ZSTD_dlm_byRef, ZSTD_dct_auto,
                                     cParams, ZSTD_defaultCMem);
}
