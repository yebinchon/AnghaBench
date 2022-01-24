#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UInt32 ;
struct TYPE_5__ {int /*<<< orphan*/  filledSemaphore; int /*<<< orphan*/  freeSemaphore; int /*<<< orphan*/  wasStopped; scalar_t__ numProcessedBlocks; scalar_t__ stopWriting; scalar_t__ exit; int /*<<< orphan*/  wasStarted; int /*<<< orphan*/  canStart; } ;
struct TYPE_6__ {int /*<<< orphan*/  hashSync; TYPE_1__ btSync; } ;
typedef  TYPE_1__ CMtSync ;
typedef  TYPE_2__ CMatchFinderMt ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 

void FUNC6(CMatchFinderMt *mt)
{
  CMtSync *p = &mt->btSync;
  for (;;)
  {
    UInt32 blockIndex = 0;
    FUNC2(&p->canStart);
    FUNC1(&p->wasStarted);
    for (;;)
    {
      if (p->exit)
        return;
      if (p->stopWriting)
      {
        p->numProcessedBlocks = blockIndex;
        FUNC3(&mt->hashSync);
        FUNC1(&p->wasStopped);
        break;
      }
      FUNC5(&p->freeSemaphore);
      FUNC0(mt, blockIndex++);
      FUNC4(&p->filledSemaphore);
    }
  }
}