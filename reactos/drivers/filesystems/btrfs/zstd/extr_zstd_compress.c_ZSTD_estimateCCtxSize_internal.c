
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_compressionParameters ;


 size_t ZSTD_estimateCCtxSize_usingCParams (int const) ;
 int ZSTD_getCParams (int,int ,int ) ;

__attribute__((used)) static size_t ZSTD_estimateCCtxSize_internal(int compressionLevel)
{
    ZSTD_compressionParameters const cParams = ZSTD_getCParams(compressionLevel, 0, 0);
    return ZSTD_estimateCCtxSize_usingCParams(cParams);
}
