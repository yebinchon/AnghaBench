
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_17__ {scalar_t__ HighPart; } ;
struct TYPE_19__ {int QuadPart; TYPE_1__ u; } ;
typedef TYPE_3__ ULARGE_INTEGER ;
struct TYPE_18__ {int storageDirEntry; } ;
struct TYPE_22__ {scalar_t__ firstFreeSmallBlock; int bigBlockSize; scalar_t__ smallBlockSize; TYPE_2__ base; int smallBlockRootChain; int smallBlockDepotChain; } ;
struct TYPE_21__ {TYPE_3__ size; } ;
struct TYPE_20__ {TYPE_6__* parentStorage; } ;
typedef TYPE_4__ SmallBlockChainStream ;
typedef int HRESULT ;
typedef TYPE_5__ DirEntry ;
typedef int DWORD ;
typedef int BYTE ;


 scalar_t__ BLOCK_END_OF_CHAIN ;
 scalar_t__ BLOCK_UNUSED ;
 int BlockChainStream_Enlarge (int ,TYPE_3__) ;
 scalar_t__ BlockChainStream_GetCount (int ) ;
 TYPE_3__ BlockChainStream_GetSize (int ) ;
 int BlockChainStream_ReadAt (int ,TYPE_3__,int,int *,scalar_t__*) ;
 int BlockChainStream_SetSize (int ,TYPE_3__) ;
 int BlockChainStream_WriteAt (int ,TYPE_3__,int,int *,scalar_t__*) ;
 int MAX_BIG_BLOCK_SIZE ;
 scalar_t__ SUCCEEDED (int ) ;
 int S_OK ;
 int StorageImpl_ReadDirEntry (TYPE_6__*,int ,TYPE_5__*) ;
 int StorageImpl_SaveFileHeader (TYPE_6__*) ;
 int StorageImpl_WriteDirEntry (TYPE_6__*,int ,TYPE_5__*) ;
 int StorageUtl_ReadDWord (int *,int ,scalar_t__*) ;
 int memset (int *,scalar_t__,int) ;

__attribute__((used)) static ULONG SmallBlockChainStream_GetNextFreeBlock(
  SmallBlockChainStream* This)
{
  ULARGE_INTEGER offsetOfBlockInDepot;
  DWORD buffer;
  ULONG bytesRead;
  ULONG blockIndex = This->parentStorage->firstFreeSmallBlock;
  ULONG nextBlockIndex = BLOCK_END_OF_CHAIN;
  HRESULT res = S_OK;
  ULONG smallBlocksPerBigBlock;
  DirEntry rootEntry;
  ULONG blocksRequired;
  ULARGE_INTEGER old_size, size_required;

  offsetOfBlockInDepot.u.HighPart = 0;




  while (nextBlockIndex != BLOCK_UNUSED)
  {
    offsetOfBlockInDepot.QuadPart = (ULONGLONG)blockIndex * sizeof(ULONG);

    res = BlockChainStream_ReadAt(
                This->parentStorage->smallBlockDepotChain,
                offsetOfBlockInDepot,
                sizeof(DWORD),
                &buffer,
                &bytesRead);




    if (SUCCEEDED(res) && bytesRead == sizeof(DWORD))
    {
      StorageUtl_ReadDWord((BYTE *)&buffer, 0, &nextBlockIndex);

      if (nextBlockIndex != BLOCK_UNUSED)
        blockIndex++;
    }
    else
    {
      ULONG count =
        BlockChainStream_GetCount(This->parentStorage->smallBlockDepotChain);

      BYTE smallBlockDepot[MAX_BIG_BLOCK_SIZE];
      ULARGE_INTEGER newSize, offset;
      ULONG bytesWritten;

      newSize.QuadPart = (ULONGLONG)(count + 1) * This->parentStorage->bigBlockSize;
      BlockChainStream_Enlarge(This->parentStorage->smallBlockDepotChain, newSize);




      memset(smallBlockDepot, BLOCK_UNUSED, This->parentStorage->bigBlockSize);
      offset.QuadPart = (ULONGLONG)count * This->parentStorage->bigBlockSize;
      BlockChainStream_WriteAt(This->parentStorage->smallBlockDepotChain,
        offset, This->parentStorage->bigBlockSize, smallBlockDepot, &bytesWritten);

      StorageImpl_SaveFileHeader(This->parentStorage);
    }
  }

  This->parentStorage->firstFreeSmallBlock = blockIndex+1;

  smallBlocksPerBigBlock =
    This->parentStorage->bigBlockSize / This->parentStorage->smallBlockSize;




  blocksRequired = (blockIndex / smallBlocksPerBigBlock) + 1;

  size_required.QuadPart = (ULONGLONG)blocksRequired * This->parentStorage->bigBlockSize;

  old_size = BlockChainStream_GetSize(This->parentStorage->smallBlockRootChain);

  if (size_required.QuadPart > old_size.QuadPart)
  {
    BlockChainStream_SetSize(
      This->parentStorage->smallBlockRootChain,
      size_required);

    StorageImpl_ReadDirEntry(
      This->parentStorage,
      This->parentStorage->base.storageDirEntry,
      &rootEntry);

    rootEntry.size = size_required;

    StorageImpl_WriteDirEntry(
      This->parentStorage,
      This->parentStorage->base.storageDirEntry,
      &rootEntry);
  }

  return blockIndex;
}
