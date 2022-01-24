#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_17__ {scalar_t__ HighPart; } ;
struct TYPE_19__ {int QuadPart; TYPE_1__ u; } ;
typedef  TYPE_3__ ULARGE_INTEGER ;
struct TYPE_18__ {int /*<<< orphan*/  storageDirEntry; } ;
struct TYPE_22__ {scalar_t__ firstFreeSmallBlock; int bigBlockSize; scalar_t__ smallBlockSize; TYPE_2__ base; int /*<<< orphan*/  smallBlockRootChain; int /*<<< orphan*/  smallBlockDepotChain; } ;
struct TYPE_21__ {TYPE_3__ size; } ;
struct TYPE_20__ {TYPE_6__* parentStorage; } ;
typedef  TYPE_4__ SmallBlockChainStream ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  TYPE_5__ DirEntry ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ BLOCK_END_OF_CHAIN ; 
 scalar_t__ BLOCK_UNUSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_3__,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_3__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_3__,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int MAX_BIG_BLOCK_SIZE ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC7 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_6__*,int /*<<< orphan*/ ,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,int) ; 

__attribute__((used)) static ULONG FUNC12(
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

  /*
   * Scan the small block depot for a free block
   */
  while (nextBlockIndex != BLOCK_UNUSED)
  {
    offsetOfBlockInDepot.QuadPart = (ULONGLONG)blockIndex * sizeof(ULONG);

    res = FUNC3(
                This->parentStorage->smallBlockDepotChain,
                offsetOfBlockInDepot,
                sizeof(DWORD),
                &buffer,
                &bytesRead);

    /*
     * If we run out of space for the small block depot, enlarge it
     */
    if (FUNC6(res) && bytesRead == sizeof(DWORD))
    {
      FUNC10((BYTE *)&buffer, 0, &nextBlockIndex);

      if (nextBlockIndex != BLOCK_UNUSED)
        blockIndex++;
    }
    else
    {
      ULONG count =
        FUNC1(This->parentStorage->smallBlockDepotChain);

      BYTE smallBlockDepot[MAX_BIG_BLOCK_SIZE];
      ULARGE_INTEGER newSize, offset;
      ULONG bytesWritten;

      newSize.QuadPart = (ULONGLONG)(count + 1) * This->parentStorage->bigBlockSize;
      FUNC0(This->parentStorage->smallBlockDepotChain, newSize);

      /*
       * Initialize all the small blocks to free
       */
      FUNC11(smallBlockDepot, BLOCK_UNUSED, This->parentStorage->bigBlockSize);
      offset.QuadPart = (ULONGLONG)count * This->parentStorage->bigBlockSize;
      FUNC5(This->parentStorage->smallBlockDepotChain,
        offset, This->parentStorage->bigBlockSize, smallBlockDepot, &bytesWritten);

      FUNC8(This->parentStorage);
    }
  }

  This->parentStorage->firstFreeSmallBlock = blockIndex+1;

  smallBlocksPerBigBlock =
    This->parentStorage->bigBlockSize / This->parentStorage->smallBlockSize;

  /*
   * Verify if we have to allocate big blocks to contain small blocks
   */
  blocksRequired = (blockIndex / smallBlocksPerBigBlock) + 1;

  size_required.QuadPart = (ULONGLONG)blocksRequired * This->parentStorage->bigBlockSize;

  old_size = FUNC2(This->parentStorage->smallBlockRootChain);

  if (size_required.QuadPart > old_size.QuadPart)
  {
    FUNC4(
      This->parentStorage->smallBlockRootChain,
      size_required);

    FUNC7(
      This->parentStorage,
      This->parentStorage->base.storageDirEntry,
      &rootEntry);

    rootEntry.size = size_required;

    FUNC9(
      This->parentStorage,
      This->parentStorage->base.storageDirEntry,
      &rootEntry);
  }

  return blockIndex;
}