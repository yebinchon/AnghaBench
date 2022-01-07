
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_12__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_14__ {scalar_t__ QuadPart; TYPE_1__ u; } ;
typedef TYPE_3__ ULARGE_INTEGER ;
struct TYPE_15__ {TYPE_2__* parentStorage; } ;
struct TYPE_13__ {scalar_t__ smallBlockSize; int smallBlockRootChain; } ;
typedef TYPE_4__ SmallBlockChainStream ;
typedef int HRESULT ;
typedef int BYTE ;


 scalar_t__ BLOCK_END_OF_CHAIN ;
 int BlockChainStream_ReadAt (int ,TYPE_3__,scalar_t__,int *,scalar_t__*) ;
 scalar_t__ FAILED (int ) ;
 int STG_E_DOCFILECORRUPT ;
 int S_OK ;
 scalar_t__ SmallBlockChainStream_GetHeadOfChain (TYPE_4__*) ;
 int SmallBlockChainStream_GetNextBlockInChain (TYPE_4__*,scalar_t__,scalar_t__*) ;
 TYPE_3__ SmallBlockChainStream_GetSize (TYPE_4__*) ;
 int assert (int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

HRESULT SmallBlockChainStream_ReadAt(
  SmallBlockChainStream* This,
  ULARGE_INTEGER offset,
  ULONG size,
  void* buffer,
  ULONG* bytesRead)
{
  HRESULT rc = S_OK;
  ULARGE_INTEGER offsetInBigBlockFile;
  ULONG blockNoInSequence =
    offset.u.LowPart / This->parentStorage->smallBlockSize;

  ULONG offsetInBlock = offset.u.LowPart % This->parentStorage->smallBlockSize;
  ULONG bytesToReadInBuffer;
  ULONG blockIndex;
  ULONG bytesReadFromBigBlockFile;
  BYTE* bufferWalker;
  ULARGE_INTEGER stream_size;




  assert(offset.u.HighPart==0);

  *bytesRead = 0;

  stream_size = SmallBlockChainStream_GetSize(This);
  if (stream_size.QuadPart > offset.QuadPart)
    size = min(stream_size.QuadPart - offset.QuadPart, size);
  else
    return S_OK;




  blockIndex = SmallBlockChainStream_GetHeadOfChain(This);

  while ( (blockNoInSequence > 0) && (blockIndex != BLOCK_END_OF_CHAIN))
  {
    rc = SmallBlockChainStream_GetNextBlockInChain(This, blockIndex, &blockIndex);
    if(FAILED(rc))
      return rc;
    blockNoInSequence--;
  }




  bufferWalker = buffer;

  while ( (size > 0) && (blockIndex != BLOCK_END_OF_CHAIN) )
  {



    bytesToReadInBuffer =
      min(This->parentStorage->smallBlockSize - offsetInBlock, size);




    offsetInBigBlockFile.QuadPart =
      (ULONGLONG)blockIndex * This->parentStorage->smallBlockSize;

    offsetInBigBlockFile.QuadPart += offsetInBlock;






    rc = BlockChainStream_ReadAt(This->parentStorage->smallBlockRootChain,
      offsetInBigBlockFile,
      bytesToReadInBuffer,
      bufferWalker,
      &bytesReadFromBigBlockFile);

    if (FAILED(rc))
      return rc;

    if (!bytesReadFromBigBlockFile)
      return STG_E_DOCFILECORRUPT;




    rc = SmallBlockChainStream_GetNextBlockInChain(This, blockIndex, &blockIndex);
    if(FAILED(rc))
      return STG_E_DOCFILECORRUPT;

    bufferWalker += bytesReadFromBigBlockFile;
    size -= bytesReadFromBigBlockFile;
    *bytesRead += bytesReadFromBigBlockFile;
    offsetInBlock = (offsetInBlock + bytesReadFromBigBlockFile) % This->parentStorage->smallBlockSize;
  }

  return S_OK;
}
