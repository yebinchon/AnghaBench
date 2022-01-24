#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_17__ {int /*<<< orphan*/  LowPart; } ;
struct TYPE_18__ {scalar_t__ QuadPart; TYPE_1__ u; } ;
typedef  TYPE_2__ ULARGE_INTEGER ;
struct TYPE_21__ {scalar_t__ bigBlockSize; } ;
struct TYPE_20__ {scalar_t__ data; scalar_t__ read; int /*<<< orphan*/  sector; } ;
struct TYPE_19__ {TYPE_6__* parentStorage; } ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_3__ BlockChainStream ;
typedef  TYPE_4__ BlockChainBlock ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,scalar_t__,TYPE_4__**,scalar_t__*,int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,scalar_t__) ; 
 TYPE_2__ FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STG_E_READFAULT ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC4 (TYPE_6__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,TYPE_2__,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC7 (char*,TYPE_3__*,int /*<<< orphan*/ ,void*,scalar_t__,scalar_t__*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__,scalar_t__) ; 

HRESULT FUNC10(BlockChainStream* This,
  ULARGE_INTEGER offset,
  ULONG          size,
  void*          buffer,
  ULONG*         bytesRead)
{
  ULONG blockNoInSequence = offset.QuadPart / This->parentStorage->bigBlockSize;
  ULONG offsetInBlock     = offset.QuadPart % This->parentStorage->bigBlockSize;
  ULONG bytesToReadInBuffer;
  ULONG blockIndex;
  BYTE* bufferWalker;
  ULARGE_INTEGER stream_size;
  HRESULT hr;
  BlockChainBlock *cachedBlock;

  FUNC7("(%p)-> %i %p %i %p\n",This, offset.u.LowPart, buffer, size, bytesRead);

  /*
   * Find the first block in the stream that contains part of the buffer.
   */
  blockIndex = FUNC1(This, blockNoInSequence);

  *bytesRead   = 0;

  stream_size = FUNC2(This);
  if (stream_size.QuadPart > offset.QuadPart)
    size = FUNC9(stream_size.QuadPart - offset.QuadPart, size);
  else
    return S_OK;

  /*
   * Start reading the buffer.
   */
  bufferWalker = buffer;

  while (size > 0)
  {
    ULARGE_INTEGER ulOffset;
    DWORD bytesReadAt;

    /*
     * Calculate how many bytes we can copy from this big block.
     */
    bytesToReadInBuffer =
      FUNC9(This->parentStorage->bigBlockSize - offsetInBlock, size);

    hr = FUNC0(This, blockNoInSequence, &cachedBlock, &blockIndex, size == bytesToReadInBuffer);

    if (FUNC3(hr))
      return hr;

    if (!cachedBlock)
    {
      /* Not in cache, and we're going to read past the end of the block. */
      ulOffset.QuadPart = FUNC4(This->parentStorage, blockIndex) +
                               offsetInBlock;

      FUNC5(This->parentStorage,
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
        if (FUNC3(FUNC6(This->parentStorage, cachedBlock->sector, cachedBlock->data, &read)) && !read)
          return STG_E_READFAULT;

        cachedBlock->read = TRUE;
      }

      FUNC8(bufferWalker, cachedBlock->data+offsetInBlock, bytesToReadInBuffer);
      bytesReadAt = bytesToReadInBuffer;
    }

    blockNoInSequence++;
    bufferWalker += bytesReadAt;
    size         -= bytesReadAt;
    *bytesRead   += bytesReadAt;
    offsetInBlock = 0;  /* There is no offset on the next block */

    if (bytesToReadInBuffer != bytesReadAt)
        break;
  }

  return S_OK;
}