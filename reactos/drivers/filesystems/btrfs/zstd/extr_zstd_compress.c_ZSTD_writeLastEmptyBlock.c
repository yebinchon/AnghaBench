
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int U32 ;


 size_t ERROR (int ) ;
 int MEM_writeLE24 (void*,int const) ;
 size_t ZSTD_blockHeaderSize ;
 scalar_t__ bt_raw ;
 int dstSize_tooSmall ;

size_t ZSTD_writeLastEmptyBlock(void* dst, size_t dstCapacity)
{
    if (dstCapacity < ZSTD_blockHeaderSize) return ERROR(dstSize_tooSmall);
    { U32 const cBlockHeader24 = 1 + (((U32)bt_raw)<<1);
        MEM_writeLE24(dst, cBlockHeader24);
        return ZSTD_blockHeaderSize;
    }
}
