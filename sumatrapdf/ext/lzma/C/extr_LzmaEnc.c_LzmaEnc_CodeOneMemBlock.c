
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ UInt64 ;
typedef scalar_t__ UInt32 ;
struct TYPE_11__ {TYPE_1__* outStream; } ;
struct TYPE_10__ {scalar_t__ nowPos64; TYPE_4__ rc; int result; void* finished; void* writeEndMark; } ;
struct TYPE_8__ {int Write; } ;
struct TYPE_9__ {size_t rem; void* overflow; TYPE_1__ funcTable; int * data; } ;
typedef int SRes ;
typedef TYPE_2__ CSeqOutStreamBuf ;
typedef scalar_t__ CLzmaEncHandle ;
typedef TYPE_3__ CLzmaEnc ;
typedef int Byte ;
typedef scalar_t__ Bool ;


 void* False ;
 int LzmaEnc_CodeOneBlock (TYPE_3__*,int ,scalar_t__,scalar_t__) ;
 int LzmaEnc_Init (TYPE_3__*) ;
 int LzmaEnc_InitPrices (TYPE_3__*) ;
 int MyWrite ;
 int RangeEnc_Init (TYPE_4__*) ;
 int SZ_ERROR_OUTPUT_EOF ;
 int SZ_OK ;
 int True ;

SRes LzmaEnc_CodeOneMemBlock(CLzmaEncHandle pp, Bool reInit,
    Byte *dest, size_t *destLen, UInt32 desiredPackSize, UInt32 *unpackSize)
{
  CLzmaEnc *p = (CLzmaEnc *)pp;
  UInt64 nowPos64;
  SRes res;
  CSeqOutStreamBuf outStream;

  outStream.funcTable.Write = MyWrite;
  outStream.data = dest;
  outStream.rem = *destLen;
  outStream.overflow = False;

  p->writeEndMark = False;
  p->finished = False;
  p->result = SZ_OK;

  if (reInit)
    LzmaEnc_Init(p);
  LzmaEnc_InitPrices(p);
  nowPos64 = p->nowPos64;
  RangeEnc_Init(&p->rc);
  p->rc.outStream = &outStream.funcTable;

  res = LzmaEnc_CodeOneBlock(p, True, desiredPackSize, *unpackSize);

  *unpackSize = (UInt32)(p->nowPos64 - nowPos64);
  *destLen -= outStream.rem;
  if (outStream.overflow)
    return SZ_ERROR_OUTPUT_EOF;

  return res;
}
