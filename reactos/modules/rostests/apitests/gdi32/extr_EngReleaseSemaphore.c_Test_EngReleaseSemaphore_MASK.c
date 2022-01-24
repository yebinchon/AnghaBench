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
struct TYPE_4__ {scalar_t__ LockCount; scalar_t__ RecursionCount; scalar_t__ OwningThread; scalar_t__ LockSemaphore; scalar_t__ SpinCount; TYPE_1__* DebugInfo; } ;
struct TYPE_3__ {scalar_t__ Type; scalar_t__ CreatorBackTraceIndex; scalar_t__ EntryCount; scalar_t__ ContentionCount; } ;
typedef  TYPE_2__* PRTL_CRITICAL_SECTION ;
typedef  int /*<<< orphan*/ * HSEMAPHORE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

void FUNC5()
{
    HSEMAPHORE hsem;
    PRTL_CRITICAL_SECTION lpcrit;

    hsem = FUNC1();
    FUNC4(hsem != NULL, "EngCreateSemaphore failed\n");
    if (!hsem) return;
    lpcrit = (PRTL_CRITICAL_SECTION)hsem;

    FUNC0(hsem);
    FUNC3(hsem);

    FUNC4(lpcrit->LockCount != 0, "lpcrit->LockCount=%ld\n", lpcrit->LockCount);
    FUNC4(lpcrit->RecursionCount == 0, "lpcrit->RecursionCount=%ld\n", lpcrit->RecursionCount);
    FUNC4(lpcrit->OwningThread == 0, "lpcrit->OwningThread=%p\n", lpcrit->OwningThread);
    FUNC4(lpcrit->LockSemaphore == 0, "lpcrit->LockSemaphore=%p\n", lpcrit->LockSemaphore);
    FUNC4(lpcrit->SpinCount == 0, "lpcrit->SpinCount=%ld\n", lpcrit->SpinCount);

    FUNC4(lpcrit->DebugInfo != NULL, "no DebugInfo\n");
    if (lpcrit->DebugInfo)
    {
        FUNC4(lpcrit->DebugInfo->Type == 0, "DebugInfo->Type=%d\n", lpcrit->DebugInfo->Type);
        FUNC4(lpcrit->DebugInfo->CreatorBackTraceIndex == 0, "DebugInfo->CreatorBackTraceIndex=%d\n", lpcrit->DebugInfo->CreatorBackTraceIndex);
        FUNC4(lpcrit->DebugInfo->EntryCount == 0, "DebugInfo->EntryCount=%ld\n", lpcrit->DebugInfo->EntryCount);
        FUNC4(lpcrit->DebugInfo->ContentionCount == 0, "DebugInfo->ContentionCount=%ld\n", lpcrit->DebugInfo->ContentionCount);
    }

    FUNC2(hsem);
}