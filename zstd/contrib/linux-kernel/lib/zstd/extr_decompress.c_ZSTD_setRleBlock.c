
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BYTE ;


 size_t ERROR (int ) ;
 int dstSize_tooSmall ;
 int memset (void*,int const,size_t) ;
 int srcSize_wrong ;

__attribute__((used)) static size_t ZSTD_setRleBlock(void *dst, size_t dstCapacity, const void *src, size_t srcSize, size_t regenSize)
{
 if (srcSize != 1)
  return ERROR(srcSize_wrong);
 if (regenSize > dstCapacity)
  return ERROR(dstSize_tooSmall);
 memset(dst, *(const BYTE *)src, regenSize);
 return regenSize;
}
