
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ U32 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 size_t ZSTD_blockHeaderSize ;
 int ZSTD_writeLE24 (void*,scalar_t__) ;
 scalar_t__ bt_raw ;
 int dstSize_tooSmall ;
 int memcpy (int *,void const*,size_t) ;

size_t ZSTD_noCompressBlock(void *dst, size_t dstCapacity, const void *src, size_t srcSize)
{
 if (srcSize + ZSTD_blockHeaderSize > dstCapacity)
  return ERROR(dstSize_tooSmall);
 memcpy((BYTE *)dst + ZSTD_blockHeaderSize, src, srcSize);
 ZSTD_writeLE24(dst, (U32)(srcSize << 2) + (U32)bt_raw);
 return ZSTD_blockHeaderSize + srcSize;
}
