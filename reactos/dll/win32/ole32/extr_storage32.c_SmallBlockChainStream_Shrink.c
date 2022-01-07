
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_15__ {scalar_t__ LowPart; } ;
struct TYPE_16__ {TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_19__ {scalar_t__ smallBlockSize; int firstFreeSmallBlock; } ;
struct TYPE_18__ {scalar_t__ startingBlock; } ;
struct TYPE_17__ {TYPE_5__* parentStorage; int ownerDirEntry; } ;
typedef TYPE_3__ SmallBlockChainStream ;
typedef TYPE_4__ DirEntry ;
typedef int BOOL ;


 scalar_t__ BLOCK_END_OF_CHAIN ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int SmallBlockChainStream_FreeBlock (TYPE_3__*,scalar_t__) ;
 scalar_t__ SmallBlockChainStream_GetHeadOfChain (TYPE_3__*) ;
 int SmallBlockChainStream_GetNextBlockInChain (TYPE_3__*,scalar_t__,scalar_t__*) ;
 int SmallBlockChainStream_SetNextBlockInChain (TYPE_3__*,scalar_t__,scalar_t__) ;
 int StorageImpl_ReadDirEntry (TYPE_5__*,int ,TYPE_4__*) ;
 int StorageImpl_WriteDirEntry (TYPE_5__*,int ,TYPE_4__*) ;
 int TRUE ;
 int min (int ,scalar_t__) ;

__attribute__((used)) static BOOL SmallBlockChainStream_Shrink(
  SmallBlockChainStream* This,
  ULARGE_INTEGER newSize)
{
  ULONG blockIndex, extraBlock;
  ULONG numBlocks;
  ULONG count = 0;

  numBlocks = newSize.u.LowPart / This->parentStorage->smallBlockSize;

  if ((newSize.u.LowPart % This->parentStorage->smallBlockSize) != 0)
    numBlocks++;

  blockIndex = SmallBlockChainStream_GetHeadOfChain(This);




  while (count < numBlocks)
  {
    if(FAILED(SmallBlockChainStream_GetNextBlockInChain(This, blockIndex,
       &blockIndex)))
      return FALSE;
    count++;
  }





  if (count == 0)
  {
    DirEntry chainEntry;

    StorageImpl_ReadDirEntry(This->parentStorage,
        This->ownerDirEntry,
        &chainEntry);

    chainEntry.startingBlock = BLOCK_END_OF_CHAIN;

    StorageImpl_WriteDirEntry(This->parentStorage,
         This->ownerDirEntry,
         &chainEntry);




    extraBlock = blockIndex;
  }
  else
  {

    if(FAILED(SmallBlockChainStream_GetNextBlockInChain(This, blockIndex,
       &extraBlock)))
      return FALSE;


    SmallBlockChainStream_SetNextBlockInChain(
      This,
      blockIndex,
      BLOCK_END_OF_CHAIN);
  }




  while (extraBlock != BLOCK_END_OF_CHAIN)
  {
    if(FAILED(SmallBlockChainStream_GetNextBlockInChain(This, extraBlock,
       &blockIndex)))
      return FALSE;
    SmallBlockChainStream_FreeBlock(This, extraBlock);
    This->parentStorage->firstFreeSmallBlock = min(This->parentStorage->firstFreeSmallBlock, extraBlock);
    extraBlock = blockIndex;
  }

  return TRUE;
}
