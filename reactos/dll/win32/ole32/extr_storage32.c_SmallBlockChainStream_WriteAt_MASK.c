#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_10__ {scalar_t__ LowPart; scalar_t__ HighPart; } ;
struct TYPE_12__ {int QuadPart; TYPE_1__ u; } ;
typedef  TYPE_3__ ULARGE_INTEGER ;
struct TYPE_13__ {TYPE_2__* parentStorage; } ;
struct TYPE_11__ {scalar_t__ smallBlockSize; int /*<<< orphan*/  smallBlockRootChain; } ;
typedef  TYPE_4__ SmallBlockChainStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ BLOCK_END_OF_CHAIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__,scalar_t__,int /*<<< orphan*/  const*,scalar_t__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STG_E_DOCFILECORRUPT ; 
 int /*<<< orphan*/  STG_E_WRITEFAULT ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 scalar_t__ FUNC5 (scalar_t__,scalar_t__) ; 

HRESULT FUNC6(
  SmallBlockChainStream* This,
  ULARGE_INTEGER offset,
  ULONG          size,
  const void*    buffer,
  ULONG*         bytesWritten)
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

  /*
   * This should never happen on a small block file.
   */
  FUNC4(offset.u.HighPart==0);

  /*
   * Find the first block in the stream that contains part of the buffer.
   */
  blockIndex = FUNC2(This);

  while ( (blockNoInSequence > 0) &&  (blockIndex != BLOCK_END_OF_CHAIN))
  {
    if(FUNC1(FUNC3(This, blockIndex, &blockIndex)))
      return STG_E_DOCFILECORRUPT;
    blockNoInSequence--;
  }

  /*
   * Start writing the buffer.
   */
  *bytesWritten   = 0;
  bufferWalker = buffer;
  while ( (size > 0) && (blockIndex != BLOCK_END_OF_CHAIN) )
  {
    /*
     * Calculate how many bytes we can copy to this small block.
     */
    bytesToWriteInBuffer =
      FUNC5(This->parentStorage->smallBlockSize - offsetInBlock, size);

    /*
     * Calculate the offset of the small block in the small block file.
     */
    offsetInBigBlockFile.QuadPart   =
      (ULONGLONG)blockIndex * This->parentStorage->smallBlockSize;

    offsetInBigBlockFile.QuadPart  += offsetInBlock;

    /*
     * Write those bytes in the buffer to the small block file.
     */
    res = FUNC0(
      This->parentStorage->smallBlockRootChain,
      offsetInBigBlockFile,
      bytesToWriteInBuffer,
      bufferWalker,
      &bytesWrittenToBigBlockFile);
    if (FUNC1(res))
      return res;

    /*
     * Step to the next big block.
     */
    res = FUNC3(This, blockIndex, &blockIndex);
    if (FUNC1(res))
      return res;
    bufferWalker  += bytesWrittenToBigBlockFile;
    size          -= bytesWrittenToBigBlockFile;
    *bytesWritten += bytesWrittenToBigBlockFile;
    offsetInBlock  = (offsetInBlock + bytesWrittenToBigBlockFile) % This->parentStorage->smallBlockSize;
  }

  return (size == 0) ? S_OK : STG_E_WRITEFAULT;
}