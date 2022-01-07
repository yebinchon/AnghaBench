
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ZSTD_CStream ;


 int DEBUGLOG (int,char*) ;
 int ZSTD_CONTENTSIZE_UNKNOWN ;
 size_t ZSTD_initCStream_srcSize (int *,int,int ) ;

size_t ZSTD_initCStream(ZSTD_CStream* zcs, int compressionLevel)
{
    DEBUGLOG(4, "ZSTD_initCStream");
    return ZSTD_initCStream_srcSize(zcs, compressionLevel, ZSTD_CONTENTSIZE_UNKNOWN);
}
