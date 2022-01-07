
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_5__ {int csWasEntered; int cs; int needStart; } ;
struct TYPE_6__ {scalar_t__ pos; int cyclicBufferSize; int son; scalar_t__ btBuf; TYPE_1__ hashSync; } ;
typedef TYPE_1__ CMtSync ;
typedef TYPE_2__ CMatchFinderMt ;


 int BtGetMatches (TYPE_2__*,scalar_t__) ;
 int CriticalSection_Enter (int *) ;
 int CriticalSection_Leave (int *) ;
 int False ;
 int MatchFinder_Normalize3 (scalar_t__,int ,int) ;
 int True ;
 scalar_t__ kMtBtBlockSize ;
 scalar_t__ kMtBtNumBlocksMask ;
 scalar_t__ kMtMaxValForNormalize ;

void BtFillBlock(CMatchFinderMt *p, UInt32 globalBlockIndex)
{
  CMtSync *sync = &p->hashSync;
  if (!sync->needStart)
  {
    CriticalSection_Enter(&sync->cs);
    sync->csWasEntered = True;
  }

  BtGetMatches(p, p->btBuf + (globalBlockIndex & kMtBtNumBlocksMask) * kMtBtBlockSize);

  if (p->pos > kMtMaxValForNormalize - kMtBtBlockSize)
  {
    UInt32 subValue = p->pos - p->cyclicBufferSize;
    MatchFinder_Normalize3(subValue, p->son, p->cyclicBufferSize * 2);
    p->pos -= subValue;
  }

  if (!sync->needStart)
  {
    CriticalSection_Leave(&sync->cs);
    sync->csWasEntered = False;
  }
}
