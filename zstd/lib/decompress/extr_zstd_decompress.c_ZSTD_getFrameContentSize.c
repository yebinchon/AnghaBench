
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ frameType; unsigned long long frameContentSize; } ;
typedef TYPE_1__ ZSTD_frameHeader ;


 unsigned long long ZSTD_CONTENTSIZE_ERROR ;
 unsigned long long ZSTD_CONTENTSIZE_UNKNOWN ;
 unsigned long long ZSTD_getDecompressedSize_legacy (void const*,size_t) ;
 scalar_t__ ZSTD_getFrameHeader (TYPE_1__*,void const*,size_t) ;
 scalar_t__ ZSTD_isLegacy (void const*,size_t) ;
 scalar_t__ ZSTD_skippableFrame ;

unsigned long long ZSTD_getFrameContentSize(const void *src, size_t srcSize)
{






    { ZSTD_frameHeader zfh;
        if (ZSTD_getFrameHeader(&zfh, src, srcSize) != 0)
            return ZSTD_CONTENTSIZE_ERROR;
        if (zfh.frameType == ZSTD_skippableFrame) {
            return 0;
        } else {
            return zfh.frameContentSize;
    } }
}
