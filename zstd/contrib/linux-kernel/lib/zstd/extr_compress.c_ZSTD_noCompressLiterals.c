
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t U32 ;
typedef int U16 ;
typedef int BYTE ;


 size_t ERROR (int ) ;
 int ZSTD_writeLE16 (int * const,int ) ;
 int ZSTD_writeLE32 (int * const,size_t) ;
 int dstSize_tooSmall ;
 int memcpy (int * const,void const*,size_t) ;
 int set_basic ;

__attribute__((used)) static size_t ZSTD_noCompressLiterals(void *dst, size_t dstCapacity, const void *src, size_t srcSize)
{
 BYTE *const ostart = (BYTE * const)dst;
 U32 const flSize = 1 + (srcSize > 31) + (srcSize > 4095);

 if (srcSize + flSize > dstCapacity)
  return ERROR(dstSize_tooSmall);

 switch (flSize) {
 case 1: ostart[0] = (BYTE)((U32)set_basic + (srcSize << 3)); break;
 case 2: ZSTD_writeLE16(ostart, (U16)((U32)set_basic + (1 << 2) + (srcSize << 4))); break;
 default:
 case 3: ZSTD_writeLE32(ostart, (U32)((U32)set_basic + (3 << 2) + (srcSize << 4))); break;
 }

 memcpy(ostart + flSize, src, srcSize);
 return srcSize + flSize;
}
