
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UInt64 ;
typedef scalar_t__ SizeT ;
typedef int SRes ;
typedef int Byte ;


 scalar_t__ LZMA86_HEADER_SIZE ;
 unsigned int LZMA86_SIZE_OFFSET ;
 int SZ_ERROR_INPUT_EOF ;
 int SZ_OK ;

SRes Lzma86_GetUnpackSize(const Byte *src, SizeT srcLen, UInt64 *unpackSize)
{
  unsigned i;
  if (srcLen < LZMA86_HEADER_SIZE)
    return SZ_ERROR_INPUT_EOF;
  *unpackSize = 0;
  for (i = 0; i < sizeof(UInt64); i++)
    *unpackSize += ((UInt64)src[LZMA86_SIZE_OFFSET + i]) << (8 * i);
  return SZ_OK;
}
