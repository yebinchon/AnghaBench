#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int LockCount; int RecursionCount; int OwningThread; int LockSemaphore; int SpinCount; TYPE_1__* DebugInfo; } ;
struct TYPE_3__ {int Type; int CreatorBackTraceIndex; int EntryCount; int ContentionCount; } ;
typedef  TYPE_2__* PRTL_CRITICAL_SECTION ;
typedef  int /*<<< orphan*/ * HSEMAPHORE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int,char*,...) ; 

void FUNC3()
{
    HSEMAPHORE hsem;
    PRTL_CRITICAL_SECTION lpcrit;

    hsem = FUNC0();
    FUNC2(hsem != NULL, "EngCreateSemaphore failed\n");
    if (!hsem) return;
    lpcrit = (PRTL_CRITICAL_SECTION)hsem;

    FUNC2(lpcrit->LockCount == -1, "lpcrit->LockCount=%ld\n", lpcrit->LockCount);
    FUNC2(lpcrit->RecursionCount == 0, "lpcrit->RecursionCount=%ld\n", lpcrit->RecursionCount);
    FUNC2(lpcrit->OwningThread == 0, "lpcrit->OwningThread=%p\n", lpcrit->OwningThread);
    FUNC2(lpcrit->LockSemaphore == 0, "lpcrit->LockSemaphore=%p\n", lpcrit->LockSemaphore);
    FUNC2(lpcrit->SpinCount == 0, "lpcrit->SpinCount=%ld\n", lpcrit->SpinCount);

    FUNC2(lpcrit->DebugInfo != NULL, "no DebugInfo\n");
    if (lpcrit->DebugInfo)
    {
        FUNC2(lpcrit->DebugInfo->Type == 0, "DebugInfo->Type=%d\n", lpcrit->DebugInfo->Type);
        FUNC2(lpcrit->DebugInfo->CreatorBackTraceIndex == 0, "DebugInfo->CreatorBackTraceIndex=%d\n", lpcrit->DebugInfo->CreatorBackTraceIndex);
        FUNC2(lpcrit->DebugInfo->EntryCount == 0, "DebugInfo->EntryCount=%ld\n", lpcrit->DebugInfo->EntryCount);
        FUNC2(lpcrit->DebugInfo->ContentionCount == 0, "DebugInfo->ContentionCount=%ld\n", lpcrit->DebugInfo->ContentionCount);
    }

    FUNC1(hsem);
}