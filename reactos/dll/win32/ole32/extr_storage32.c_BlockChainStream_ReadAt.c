
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef scalar_t__ ULONG ;
struct TYPE_17__ {int LowPart; } ;
struct TYPE_18__ {scalar_t__ QuadPart; TYPE_1__ u; } ;
typedef TYPE_2__ ULARGE_INTEGER ;
struct TYPE_21__ {scalar_t__ bigBlockSize; } ;
struct TYPE_20__ {scalar_t__ data; scalar_t__ read; int sector; } ;
struct TYPE_19__ {TYPE_6__* parentStorage; } ;
typedef int HRESULT ;
typedef scalar_t__ DWORD ;
typedef TYPE_3__ BlockChainStream ;
typedef TYPE_4__ BlockChainBlock ;
typedef int BYTE ;


 int BlockChainStream_GetBlockAtOffset (TYPE_3__*,scalar_t__,TYPE_4__**,scalar_t__*,int) ;
 scalar_t__ BlockChainStream_GetSectorOfOffset (TYPE_3__*,scalar_t__) ;
 TYPE_2__ BlockChainStream_GetSize (TYPE_3__*) ;
 scalar_t__ FAILED (int ) ;
 int STG_E_READFAULT ;
 int S_OK ;
 scalar_t__ StorageImpl_GetBigBlockOffset (TYPE_6__*,scalar_t__) ;
 int StorageImpl_ReadAt (TYPE_6__*,TYPE_2__,int *,scalar_t__,scalar_t__*) ;
 int StorageImpl_ReadBigBlock (TYPE_6__*,int ,scalar_t__,scalar_t__*) ;
 int TRACE (char*,TYPE_3__*,int ,void*,scalar_t__,scalar_t__*) ;
 scalar_t__ TRUE ;
 int memcpy (int *,scalar_t__,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

HRESULT BlockChainStream_ReadAt(BlockChainStream* This,
  ULARGE_INTEGER offset,
  ULONG size,
  void* buffer,
  ULONG* bytesRead)
{
  ULONG blockNoInSequence = offset.QuadPart / This->parentStorage->bigBlockSize;
  ULONG offsetInBlock = offset.QuadPart % This->parentStorage->bigBlockSize;
  ULONG bytesToReadInBuffer;
  ULONG blockIndex;
  BYTE* bufferWalker;
  ULARGE_INTEGER stream_size;
  HRESULT hr;
  BlockChainBlock *cachedBlock;

  TRACE("(%p)-> %i %p %i %p\n",This, offset.u.LowPart, buffer, size, bytesRead);




  blockIndex = BlockChainStream_GetSectorOfOffset(This, blockNoInSequence);

  *bytesRead = 0;

  stream_size = BlockChainStream_GetSize(This);
  if (stream_size.QuadPart > offset.QuadPart)
    size = min(stream_size.QuadPart - offset.QuadPart, size);
  else
    return S_OK;




  bufferWalker = buffer;

  while (size > 0)
  {
    ULARGE_INTEGER ulOffset;
    DWORD bytesReadAt;




    bytesToReadInBuffer =
      min(This->parentStorage->bigBlockSize - offsetInBlock, size);

    hr = BlockChainStream_GetBlockAtOffset(This, blockNoInSequence, &cachedBlock, &blockIndex, size == bytesToReadInBuffer);

    if (FAILED(hr))
      return hr;

    if (!cachedBlock)
    {

      ulOffset.QuadPart = StorageImpl_GetBigBlockOffset(This->parentStorage, blockIndex) +
                               offsetInBlock;

      StorageImpl_ReadAt(This->parentStorage,
           ulOffset,
           bufferWalker,
           bytesToReadInBuffer,
           &bytesReadAt);
    }
    else
    {
      if (!cachedBlock->read)
      {
        ULONG read;
        if (FAILED(StorageImpl_ReadBigBlock(This->parentStorage, cachedBlock->sector, cachedBlock->data, &read)) && !read)
          return STG_E_READFAULT;

        cachedBlock->read = TRUE;
      }

      memcpy(bufferWalker, cachedBlock->data+offsetInBlock, bytesToReadInBuffer);
      bytesReadAt = bytesToReadInBuffer;
    }

    blockNoInSequence++;
    bufferWalker += bytesReadAt;
    size -= bytesReadAt;
    *bytesRead += bytesReadAt;
    offsetInBlock = 0;

    if (bytesToReadInBuffer != bytesReadAt)
        break;
  }

  return S_OK;
}
