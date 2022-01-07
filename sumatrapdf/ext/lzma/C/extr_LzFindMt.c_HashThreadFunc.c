
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int UInt32 ;
struct TYPE_14__ {scalar_t__ pos; int historySize; int streamPos; int numHashBytes; int buffer; int crc; scalar_t__ hashMask; scalar_t__ fixedHashSize; scalar_t__ hash; } ;
struct TYPE_12__ {int numProcessedBlocks; int filledSemaphore; int freeSemaphore; int cs; int wasStopped; scalar_t__ stopWriting; scalar_t__ exit; int wasStarted; int canStart; } ;
struct TYPE_11__ {int cs; } ;
struct TYPE_13__ {int pointerToCurPos; int buffer; int* hashBuf; int (* GetHeadsFunc ) (int,int,scalar_t__,scalar_t__,int*,int,int ) ;TYPE_2__ hashSync; TYPE_1__ btSync; TYPE_4__* MatchFinder; } ;
typedef TYPE_2__ CMtSync ;
typedef TYPE_3__ CMatchFinderMt ;
typedef TYPE_4__ CMatchFinder ;
typedef int Byte ;


 int CriticalSection_Enter (int *) ;
 int CriticalSection_Leave (int *) ;
 int Event_Set (int *) ;
 int Event_Wait (int *) ;
 int * MatchFinder_GetPointerToCurrentPos (TYPE_4__*) ;
 int MatchFinder_MoveBlock (TYPE_4__*) ;
 scalar_t__ MatchFinder_NeedMove (TYPE_4__*) ;
 int MatchFinder_Normalize3 (int,scalar_t__,scalar_t__) ;
 int MatchFinder_ReadIfRequired (TYPE_4__*) ;
 int MatchFinder_ReduceOffsets (TYPE_4__*,int) ;
 int Semaphore_Release1 (int *) ;
 int Semaphore_Wait (int *) ;
 int kMtHashBlockSize ;
 int kMtHashNumBlocksMask ;
 scalar_t__ kMtMaxValForNormalize ;
 int stub1 (int,int,scalar_t__,scalar_t__,int*,int,int ) ;

void HashThreadFunc(CMatchFinderMt *mt)
{
  CMtSync *p = &mt->hashSync;
  for (;;)
  {
    UInt32 numProcessedBlocks = 0;
    Event_Wait(&p->canStart);
    Event_Set(&p->wasStarted);
    for (;;)
    {
      if (p->exit)
        return;
      if (p->stopWriting)
      {
        p->numProcessedBlocks = numProcessedBlocks;
        Event_Set(&p->wasStopped);
        break;
      }

      {
        CMatchFinder *mf = mt->MatchFinder;
        if (MatchFinder_NeedMove(mf))
        {
          CriticalSection_Enter(&mt->btSync.cs);
          CriticalSection_Enter(&mt->hashSync.cs);
          {
            const Byte *beforePtr = MatchFinder_GetPointerToCurrentPos(mf);
            const Byte *afterPtr;
            MatchFinder_MoveBlock(mf);
            afterPtr = MatchFinder_GetPointerToCurrentPos(mf);
            mt->pointerToCurPos -= beforePtr - afterPtr;
            mt->buffer -= beforePtr - afterPtr;
          }
          CriticalSection_Leave(&mt->btSync.cs);
          CriticalSection_Leave(&mt->hashSync.cs);
          continue;
        }

        Semaphore_Wait(&p->freeSemaphore);

        MatchFinder_ReadIfRequired(mf);
        if (mf->pos > (kMtMaxValForNormalize - kMtHashBlockSize))
        {
          UInt32 subValue = (mf->pos - mf->historySize - 1);
          MatchFinder_ReduceOffsets(mf, subValue);
          MatchFinder_Normalize3(subValue, mf->hash + mf->fixedHashSize, mf->hashMask + 1);
        }
        {
          UInt32 *heads = mt->hashBuf + ((numProcessedBlocks++) & kMtHashNumBlocksMask) * kMtHashBlockSize;
          UInt32 num = mf->streamPos - mf->pos;
          heads[0] = 2;
          heads[1] = num;
          if (num >= mf->numHashBytes)
          {
            num = num - mf->numHashBytes + 1;
            if (num > kMtHashBlockSize - 2)
              num = kMtHashBlockSize - 2;
            mt->GetHeadsFunc(mf->buffer, mf->pos, mf->hash + mf->fixedHashSize, mf->hashMask, heads + 2, num, mf->crc);
            heads[0] += num;
          }
          mf->pos += num;
          mf->buffer += num;
        }
      }

      Semaphore_Release1(&p->filledSemaphore);
    }
  }
}
