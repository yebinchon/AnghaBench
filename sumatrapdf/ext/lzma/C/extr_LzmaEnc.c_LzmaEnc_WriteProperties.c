
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_2__ {int dictSize; int pb; int lp; scalar_t__ lc; } ;
typedef scalar_t__ SizeT ;
typedef int SRes ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_1__ CLzmaEnc ;
typedef scalar_t__ Byte ;


 scalar_t__ LZMA_PROPS_SIZE ;
 int SZ_ERROR_PARAM ;
 int SZ_OK ;

SRes LzmaEnc_WriteProperties(CLzmaEncHandle pp, Byte *props, SizeT *size)
{
  CLzmaEnc *p = (CLzmaEnc *)pp;
  int i;
  UInt32 dictSize = p->dictSize;
  if (*size < LZMA_PROPS_SIZE)
    return SZ_ERROR_PARAM;
  *size = LZMA_PROPS_SIZE;
  props[0] = (Byte)((p->pb * 5 + p->lp) * 9 + p->lc);

  for (i = 11; i <= 30; i++)
  {
    if (dictSize <= ((UInt32)2 << i))
    {
      dictSize = (2 << i);
      break;
    }
    if (dictSize <= ((UInt32)3 << i))
    {
      dictSize = (3 << i);
      break;
    }
  }

  for (i = 0; i < 4; i++)
    props[1 + i] = (Byte)(dictSize >> (8 * i));
  return SZ_OK;
}
