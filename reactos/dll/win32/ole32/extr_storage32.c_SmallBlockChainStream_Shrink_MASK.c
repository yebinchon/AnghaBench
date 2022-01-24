#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_5__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_15__ {scalar_t__ LowPart; } ;
struct TYPE_16__ {TYPE_1__ u; } ;
typedef  TYPE_2__ ULARGE_INTEGER ;
struct TYPE_19__ {scalar_t__ smallBlockSize; int /*<<< orphan*/  firstFreeSmallBlock; } ;
struct TYPE_18__ {scalar_t__ startingBlock; } ;
struct TYPE_17__ {TYPE_5__* parentStorage; int /*<<< orphan*/  ownerDirEntry; } ;
typedef  TYPE_3__ SmallBlockChainStream ;
typedef  TYPE_4__ DirEntry ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ BLOCK_END_OF_CHAIN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,scalar_t__) ; 
 scalar_t__ FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static BOOL FUNC8(
  SmallBlockChainStream* This,
  ULARGE_INTEGER newSize)
{
  ULONG blockIndex, extraBlock;
  ULONG numBlocks;
  ULONG count = 0;

  numBlocks = newSize.u.LowPart / This->parentStorage->smallBlockSize;

  if ((newSize.u.LowPart % This->parentStorage->smallBlockSize) != 0)
    numBlocks++;

  blockIndex = FUNC2(This);

  /*
   * Go to the new end of chain
   */
  while (count < numBlocks)
  {
    if(FUNC0(FUNC3(This, blockIndex,
							&blockIndex)))
      return FALSE;
    count++;
  }

  /*
   * If the count is 0, we have a special case, the head of the chain was
   * just freed.
   */
  if (count == 0)
  {
    DirEntry chainEntry;

    FUNC5(This->parentStorage,
			     This->ownerDirEntry,
			     &chainEntry);

    chainEntry.startingBlock = BLOCK_END_OF_CHAIN;

    FUNC6(This->parentStorage,
			      This->ownerDirEntry,
			      &chainEntry);

    /*
     * We start freeing the chain at the head block.
     */
    extraBlock = blockIndex;
  }
  else
  {
    /* Get the next block before marking the new end */
    if(FUNC0(FUNC3(This, blockIndex,
							&extraBlock)))
      return FALSE;

    /* Mark the new end of chain */
    FUNC4(
      This,
      blockIndex,
      BLOCK_END_OF_CHAIN);
  }

  /*
   * Mark the extra blocks as free
   */
  while (extraBlock != BLOCK_END_OF_CHAIN)
  {
    if(FUNC0(FUNC3(This, extraBlock,
							&blockIndex)))
      return FALSE;
    FUNC1(This, extraBlock);
    This->parentStorage->firstFreeSmallBlock = FUNC7(This->parentStorage->firstFreeSmallBlock, extraBlock);
    extraBlock = blockIndex;
  }

  return TRUE;
}