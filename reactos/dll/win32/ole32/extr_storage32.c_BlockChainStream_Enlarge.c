
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_15__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_18__ {scalar_t__ bigBlockSize; } ;
struct TYPE_17__ {scalar_t__ ownerDirEntry; scalar_t__ tailIndex; int numBlocks; TYPE_4__* parentStorage; scalar_t__* headOfStreamPlaceHolder; } ;
struct TYPE_16__ {scalar_t__ startingBlock; } ;
typedef TYPE_2__ DirEntry ;
typedef TYPE_3__ BlockChainStream ;
typedef int BOOL ;


 scalar_t__ BLOCK_END_OF_CHAIN ;
 scalar_t__ BlockChainStream_GetHeadOfChain (TYPE_3__*) ;
 int BlockChainStream_UpdateIndexCache (TYPE_3__*) ;
 scalar_t__ DIRENTRY_NULL ;
 scalar_t__ FAILED (int ) ;
 int FALSE ;
 int StorageImpl_GetNextBlockInChain (TYPE_4__*,scalar_t__,scalar_t__*) ;
 scalar_t__ StorageImpl_GetNextFreeBigBlock (TYPE_4__*) ;
 int StorageImpl_ReadDirEntry (TYPE_4__*,scalar_t__,TYPE_2__*) ;
 int StorageImpl_SetNextBlockInChain (TYPE_4__*,scalar_t__,scalar_t__) ;
 int StorageImpl_WriteDirEntry (TYPE_4__*,scalar_t__,TYPE_2__*) ;
 int TRUE ;
 int assert (int) ;

__attribute__((used)) static BOOL BlockChainStream_Enlarge(BlockChainStream* This,
                                     ULARGE_INTEGER newSize)
{
  ULONG blockIndex, currentBlock;
  ULONG newNumBlocks;
  ULONG oldNumBlocks = 0;

  blockIndex = BlockChainStream_GetHeadOfChain(This);




  if (blockIndex == BLOCK_END_OF_CHAIN)
  {
    blockIndex = StorageImpl_GetNextFreeBigBlock(This->parentStorage);
    StorageImpl_SetNextBlockInChain(This->parentStorage,
                                      blockIndex,
                                      BLOCK_END_OF_CHAIN);

    if (This->headOfStreamPlaceHolder != 0)
    {
      *(This->headOfStreamPlaceHolder) = blockIndex;
    }
    else
    {
      DirEntry chainEntry;
      assert(This->ownerDirEntry != DIRENTRY_NULL);

      StorageImpl_ReadDirEntry(
        This->parentStorage,
        This->ownerDirEntry,
        &chainEntry);

      chainEntry.startingBlock = blockIndex;

      StorageImpl_WriteDirEntry(
        This->parentStorage,
        This->ownerDirEntry,
        &chainEntry);
    }

    This->tailIndex = blockIndex;
    This->numBlocks = 1;
  }




  newNumBlocks = newSize.QuadPart / This->parentStorage->bigBlockSize;

  if ((newSize.QuadPart % This->parentStorage->bigBlockSize) != 0)
    newNumBlocks++;




  if (This->tailIndex == BLOCK_END_OF_CHAIN)
  {
    currentBlock = blockIndex;

    while (blockIndex != BLOCK_END_OF_CHAIN)
    {
      This->numBlocks++;
      currentBlock = blockIndex;

      if(FAILED(StorageImpl_GetNextBlockInChain(This->parentStorage, currentBlock,
      &blockIndex)))
 return FALSE;
    }

    This->tailIndex = currentBlock;
  }

  currentBlock = This->tailIndex;
  oldNumBlocks = This->numBlocks;




  if (oldNumBlocks < newNumBlocks)
  {
    while (oldNumBlocks < newNumBlocks)
    {
      blockIndex = StorageImpl_GetNextFreeBigBlock(This->parentStorage);

      StorageImpl_SetNextBlockInChain(
 This->parentStorage,
 currentBlock,
 blockIndex);

      StorageImpl_SetNextBlockInChain(
        This->parentStorage,
 blockIndex,
 BLOCK_END_OF_CHAIN);

      currentBlock = blockIndex;
      oldNumBlocks++;
    }

    This->tailIndex = blockIndex;
    This->numBlocks = newNumBlocks;
  }

  if (FAILED(BlockChainStream_UpdateIndexCache(This)))
    return FALSE;

  return TRUE;
}
