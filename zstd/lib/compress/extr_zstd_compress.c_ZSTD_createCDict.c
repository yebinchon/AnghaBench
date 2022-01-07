
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ZSTD_compressionParameters ;
struct TYPE_4__ {int compressionLevel; } ;
typedef TYPE_1__ ZSTD_CDict ;


 int ZSTD_CLEVEL_DEFAULT ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 TYPE_1__* ZSTD_createCDict_advanced (void const*,size_t,int ,int ,int ,int ) ;
 int ZSTD_dct_auto ;
 int ZSTD_defaultCMem ;
 int ZSTD_dlm_byCopy ;
 int ZSTD_getCParams_internal (int,int ,size_t) ;

ZSTD_CDict* ZSTD_createCDict(const void* dict, size_t dictSize, int compressionLevel)
{
    ZSTD_compressionParameters cParams = ZSTD_getCParams_internal(compressionLevel, ZSTD_CONTENTSIZE_UNKNOWN, dictSize);
    ZSTD_CDict* cdict = ZSTD_createCDict_advanced(dict, dictSize,
                                                  ZSTD_dlm_byCopy, ZSTD_dct_auto,
                                                  cParams, ZSTD_defaultCMem);
    if (cdict)
        cdict->compressionLevel = compressionLevel == 0 ? ZSTD_CLEVEL_DEFAULT : compressionLevel;
    return cdict;
}
