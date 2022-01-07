
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_6__ {int dictSize; int distTableSize; scalar_t__ nowPos64; int result; int finished; } ;
typedef int SRes ;
typedef int ISzAlloc ;
typedef TYPE_1__ CLzmaEnc ;


 int False ;
 int LzmaEnc_Alloc (TYPE_1__*,int,int *,int *) ;
 int LzmaEnc_Init (TYPE_1__*) ;
 int LzmaEnc_InitPrices (TYPE_1__*) ;
 int RINOK (int ) ;
 int SZ_OK ;
 scalar_t__ kDicLogSizeMaxCompress ;

__attribute__((used)) static SRes LzmaEnc_AllocAndInit(CLzmaEnc *p, UInt32 keepWindowSize, ISzAlloc *alloc, ISzAlloc *allocBig)
{
  UInt32 i;
  for (i = 0; i < (UInt32)kDicLogSizeMaxCompress; i++)
    if (p->dictSize <= ((UInt32)1 << i))
      break;
  p->distTableSize = i * 2;

  p->finished = False;
  p->result = SZ_OK;
  RINOK(LzmaEnc_Alloc(p, keepWindowSize, alloc, allocBig));
  LzmaEnc_Init(p);
  LzmaEnc_InitPrices(p);
  p->nowPos64 = 0;
  return SZ_OK;
}
