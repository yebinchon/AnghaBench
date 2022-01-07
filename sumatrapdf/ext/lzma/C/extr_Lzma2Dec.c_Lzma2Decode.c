
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int dicPos; int dicBufSize; int * dic; } ;
struct TYPE_9__ {TYPE_1__ decoder; } ;
typedef int SizeT ;
typedef scalar_t__ SRes ;
typedef int ISzAlloc ;
typedef scalar_t__ ELzmaStatus ;
typedef int ELzmaFinishMode ;
typedef TYPE_2__ CLzma2Dec ;
typedef int Byte ;


 scalar_t__ LZMA_STATUS_NEEDS_MORE_INPUT ;
 scalar_t__ LZMA_STATUS_NOT_SPECIFIED ;
 int Lzma2Dec_AllocateProbs (TYPE_2__*,int ,int *) ;
 int Lzma2Dec_Construct (TYPE_2__*) ;
 scalar_t__ Lzma2Dec_DecodeToDic (TYPE_2__*,int ,int const*,int *,int ,scalar_t__*) ;
 int Lzma2Dec_FreeProbs (TYPE_2__*,int *) ;
 int Lzma2Dec_Init (TYPE_2__*) ;
 int RINOK (int ) ;
 scalar_t__ SZ_ERROR_INPUT_EOF ;
 scalar_t__ SZ_OK ;

SRes Lzma2Decode(Byte *dest, SizeT *destLen, const Byte *src, SizeT *srcLen,
    Byte prop, ELzmaFinishMode finishMode, ELzmaStatus *status, ISzAlloc *alloc)
{
  CLzma2Dec p;
  SRes res;
  SizeT outSize = *destLen, inSize = *srcLen;
  *destLen = *srcLen = 0;
  *status = LZMA_STATUS_NOT_SPECIFIED;
  Lzma2Dec_Construct(&p);
  RINOK(Lzma2Dec_AllocateProbs(&p, prop, alloc));
  p.decoder.dic = dest;
  p.decoder.dicBufSize = outSize;
  Lzma2Dec_Init(&p);
  *srcLen = inSize;
  res = Lzma2Dec_DecodeToDic(&p, outSize, src, srcLen, finishMode, status);
  *destLen = p.decoder.dicPos;
  if (res == SZ_OK && *status == LZMA_STATUS_NEEDS_MORE_INPUT)
    res = SZ_ERROR_INPUT_EOF;
  Lzma2Dec_FreeProbs(&p, alloc);
  return res;
}
