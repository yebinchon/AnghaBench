
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_10__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_12__ {int QuadPart; TYPE_1__ u; } ;
typedef TYPE_3__ ULARGE_INTEGER ;
struct TYPE_13__ {TYPE_2__* parentStorage; } ;
struct TYPE_11__ {scalar_t__ smallBlockSize; int smallBlockRootChain; } ;
typedef TYPE_4__ SmallBlockChainStream ;
typedef int HRESULT ;
typedef int BYTE ;


 scalar_t__ BLOCK_END_OF_CHAIN ;
 int BlockChainStream_WriteAt (int ,TYPE_3__,scalar_t__,int const*,scalar_t__*) ;
 scalar_t__ FAILED (int ) ;
 int STG_E_DOCFILECORRUPT ;
 int STG_E_WRITEFAULT ;
 int S_OK ;
 scalar_t__ SmallBlockChainStream_GetHeadOfChain (TYPE_4__*) ;
 int SmallBlockChainStream_GetNextBlockInChain (TYPE_4__*,scalar_t__,scalar_t__*) ;
 int assert (int) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

HRESULT SmallBlockChainStream_WriteAt(
  SmallBlockChainStream* This,
  ULARGE_INTEGER offset,
  ULONG size,
  const void* buffer,
  ULONG* bytesWritten)
{
  ULARGE_INTEGER offsetInBigBlockFile;
  ULONG blockNoInSequence =
    offset.u.LowPart / This->parentStorage->smallBlockSize;

  ULONG offsetInBlock = offset.u.LowPart % This->parentStorage->smallBlockSize;
  ULONG bytesToWriteInBuffer;
  ULONG blockIndex;
  ULONG bytesWrittenToBigBlockFile;
  const BYTE* bufferWalker;
  HRESULT res;




  assert(offset.u.HighPart==0);




  blockIndex = SmallBlockChainStream_GetHeadOfChain(This);

  while ( (blockNoInSequence > 0) && (blockIndex != BLOCK_END_OF_CHAIN))
  {
    if(FAILED(SmallBlockChainStream_GetNextBlockInChain(This, blockIndex, &blockIndex)))
      return STG_E_DOCFILECORRUPT;
    blockNoInSequence--;
  }




  *bytesWritten = 0;
  bufferWalker = buffer;
  while ( (size > 0) && (blockIndex != BLOCK_END_OF_CHAIN) )
  {



    bytesToWriteInBuffer =
      min(This->parentStorage->smallBlockSize - offsetInBlock, size);




    offsetInBigBlockFile.QuadPart =
      (ULONGLONG)blockIndex * This->parentStorage->smallBlockSize;

    offsetInBigBlockFile.QuadPart += offsetInBlock;




    res = BlockChainStream_WriteAt(
      This->parentStorage->smallBlockRootChain,
      offsetInBigBlockFile,
      bytesToWriteInBuffer,
      bufferWalker,
      &bytesWrittenToBigBlockFile);
    if (FAILED(res))
      return res;




    res = SmallBlockChainStream_GetNextBlockInChain(This, blockIndex, &blockIndex);
    if (FAILED(res))
      return res;
    bufferWalker += bytesWrittenToBigBlockFile;
    size -= bytesWrittenToBigBlockFile;
    *bytesWritten += bytesWrittenToBigBlockFile;
    offsetInBlock = (offsetInBlock + bytesWrittenToBigBlockFile) % This->parentStorage->smallBlockSize;
  }

  return (size == 0) ? S_OK : STG_E_WRITEFAULT;
}
