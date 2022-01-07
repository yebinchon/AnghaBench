
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned long long const ZSTD_CONTENTSIZE_ERROR ;
 unsigned long long const ZSTD_CONTENTSIZE_UNKNOWN ;
 int ZSTD_STATIC_ASSERT (int) ;
 unsigned long long ZSTD_getFrameContentSize (void const*,size_t) ;

unsigned long long ZSTD_getDecompressedSize(const void* src, size_t srcSize)
{
    unsigned long long const ret = ZSTD_getFrameContentSize(src, srcSize);
    ZSTD_STATIC_ASSERT(ZSTD_CONTENTSIZE_ERROR < ZSTD_CONTENTSIZE_UNKNOWN);
    return (ret >= ZSTD_CONTENTSIZE_ERROR) ? 0 : ret;
}
