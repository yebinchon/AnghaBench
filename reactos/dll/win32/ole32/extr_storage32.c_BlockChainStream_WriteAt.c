
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_12__ {scalar_t__ QuadPart; } ;
typedef TYPE_1__ ULARGE_INTEGER ;
struct TYPE_15__ {scalar_t__ bigBlockSize; } ;
struct TYPE_14__ {scalar_t__ data; void* dirty; void* read; int sector; } ;
struct TYPE_13__ {TYPE_4__* parentStorage; } ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_2__ BlockChainStream ;
typedef TYPE_3__ BlockChainBlock ;
typedef int BYTE ;


 int BlockChainStream_GetBlockAtOffset (TYPE_2__*,scalar_t__,TYPE_3__**,scalar_t__*,int) ;
 int ERR (char*) ;
 scalar_t__ FAILED (int ) ;
 int STG_E_READFAULT ;
 int STG_E_WRITEFAULT ;
 int S_OK ;
 scalar_t__ StorageImpl_GetBigBlockOffset (TYPE_4__*,scalar_t__) ;
 int StorageImpl_ReadBigBlock (TYPE_4__*,int ,scalar_t__,scalar_t__*) ;
 int StorageImpl_WriteAt (TYPE_4__*,TYPE_1__,int const*,scalar_t__,scalar_t__*) ;
 void* TRUE ;
 int memcpy (scalar_t__,int const*,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

HRESULT BlockChainStream_WriteAt(BlockChainStream* This,
  ULARGE_INTEGER offset,
  ULONG size,
  const void* buffer,
  ULONG* bytesWritten)
{
  ULONG blockNoInSequence = offset.QuadPart / This->parentStorage->bigBlockSize;
  ULONG offsetInBlock = offset.QuadPart % This->parentStorage->bigBlockSize;
  ULONG bytesToWrite;
  ULONG blockIndex;
  const BYTE* bufferWalker;
  HRESULT hr;
  BlockChainBlock *cachedBlock;

  *bytesWritten = 0;
  bufferWalker = buffer;

  while (size > 0)
  {
    ULARGE_INTEGER ulOffset;
    DWORD bytesWrittenAt;




    bytesToWrite =
      min(This->parentStorage->bigBlockSize - offsetInBlock, size);

    hr = BlockChainStream_GetBlockAtOffset(This, blockNoInSequence, &cachedBlock, &blockIndex, size == bytesToWrite);



    if (FAILED(hr))
    {
      ERR("not enough blocks in chain to write data\n");
      return hr;
    }

    if (!cachedBlock)
    {

      ulOffset.QuadPart = StorageImpl_GetBigBlockOffset(This->parentStorage, blockIndex) +
                               offsetInBlock;

      StorageImpl_WriteAt(This->parentStorage,
           ulOffset,
           bufferWalker,
           bytesToWrite,
           &bytesWrittenAt);
    }
    else
    {
      if (!cachedBlock->read && bytesToWrite != This->parentStorage->bigBlockSize)
      {
        ULONG read;
        if (FAILED(StorageImpl_ReadBigBlock(This->parentStorage, cachedBlock->sector, cachedBlock->data, &read)) && !read)
          return STG_E_READFAULT;
      }

      memcpy(cachedBlock->data+offsetInBlock, bufferWalker, bytesToWrite);
      bytesWrittenAt = bytesToWrite;
      cachedBlock->read = TRUE;
      cachedBlock->dirty = TRUE;
    }

    blockNoInSequence++;
    bufferWalker += bytesWrittenAt;
    size -= bytesWrittenAt;
    *bytesWritten += bytesWrittenAt;
    offsetInBlock = 0;

    if (bytesWrittenAt != bytesToWrite)
      break;
  }

  return (size == 0) ? S_OK : STG_E_WRITEFAULT;
}
