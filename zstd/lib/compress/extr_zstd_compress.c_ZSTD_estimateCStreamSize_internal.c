
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_compressionParameters ;


 int ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_estimateCStreamSize_usingCParams (int const) ;
 int ZSTD_getCParams_internal (int,int ,int ) ;

__attribute__((used)) static size_t ZSTD_estimateCStreamSize_internal(int compressionLevel)
{
    ZSTD_compressionParameters const cParams = ZSTD_getCParams_internal(compressionLevel, ZSTD_CONTENTSIZE_UNKNOWN, 0);
    return ZSTD_estimateCStreamSize_usingCParams(cParams);
}
