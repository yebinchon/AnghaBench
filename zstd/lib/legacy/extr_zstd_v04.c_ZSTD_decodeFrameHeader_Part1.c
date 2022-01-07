
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t headerSize; } ;
typedef TYPE_1__ ZSTD_DCtx ;
typedef scalar_t__ U32 ;


 size_t ERROR (int ) ;
 scalar_t__ MEM_readLE32 (void const*) ;
 scalar_t__ ZSTD_MAGICNUMBER ;
 size_t ZSTD_frameHeaderSize_min ;
 int prefix_unknown ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_decodeFrameHeader_Part1(ZSTD_DCtx* zc, const void* src, size_t srcSize)
{
    U32 magicNumber;
    if (srcSize != ZSTD_frameHeaderSize_min) return ERROR(srcSize_wrong);
    magicNumber = MEM_readLE32(src);
    if (magicNumber != ZSTD_MAGICNUMBER) return ERROR(prefix_unknown);
    zc->headerSize = ZSTD_frameHeaderSize_min;
    return zc->headerSize;
}
