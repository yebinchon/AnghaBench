
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UInt32 ;
struct TYPE_6__ {int numProcessedBlocks; } ;
struct TYPE_5__ {scalar_t__ lzPos; scalar_t__ btBufPos; scalar_t__* btBuf; scalar_t__ btNumAvailBytes; scalar_t__ btBufPosLimit; TYPE_2__ btSync; } ;
typedef TYPE_1__ CMatchFinderMt ;


 int MatchFinderMt_Normalize (TYPE_1__*) ;
 int MtSync_GetNextBlock (TYPE_2__*) ;
 scalar_t__ kMtBtBlockSize ;
 int kMtBtNumBlocksMask ;
 scalar_t__ kMtMaxValForNormalize ;

void MatchFinderMt_GetNextBlock_Bt(CMatchFinderMt *p)
{
  UInt32 blockIndex;
  MtSync_GetNextBlock(&p->btSync);
  blockIndex = ((p->btSync.numProcessedBlocks - 1) & kMtBtNumBlocksMask);
  p->btBufPosLimit = p->btBufPos = blockIndex * kMtBtBlockSize;
  p->btBufPosLimit += p->btBuf[p->btBufPos++];
  p->btNumAvailBytes = p->btBuf[p->btBufPos++];
  if (p->lzPos >= kMtMaxValForNormalize - kMtBtBlockSize)
    MatchFinderMt_Normalize(p);
}
