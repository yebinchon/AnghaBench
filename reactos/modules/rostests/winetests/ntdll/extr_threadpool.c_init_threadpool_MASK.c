#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  TpAllocCleanupGroup ; 
 int /*<<< orphan*/  TpAllocPool ; 
 int /*<<< orphan*/  TpAllocTimer ; 
 int /*<<< orphan*/  TpAllocWait ; 
 int /*<<< orphan*/  TpAllocWork ; 
 int /*<<< orphan*/  TpCallbackMayRunLong ; 
 int /*<<< orphan*/  TpCallbackReleaseSemaphoreOnCompletion ; 
 int /*<<< orphan*/  TpDisassociateCallback ; 
 int /*<<< orphan*/  TpIsTimerSet ; 
 int /*<<< orphan*/  TpPostWork ; 
 int /*<<< orphan*/  TpReleaseCleanupGroup ; 
 int /*<<< orphan*/  TpReleaseCleanupGroupMembers ; 
 int /*<<< orphan*/  TpReleasePool ; 
 int /*<<< orphan*/  TpReleaseTimer ; 
 int /*<<< orphan*/  TpReleaseWait ; 
 int /*<<< orphan*/  TpReleaseWork ; 
 int /*<<< orphan*/  TpSetPoolMaxThreads ; 
 int /*<<< orphan*/  TpSetTimer ; 
 int /*<<< orphan*/  TpSetWait ; 
 int /*<<< orphan*/  TpSimpleTryPost ; 
 int /*<<< orphan*/  TpWaitForTimer ; 
 int /*<<< orphan*/  TpWaitForWait ; 
 int /*<<< orphan*/  TpWaitForWork ; 
 int /*<<< orphan*/  hntdll ; 
 int /*<<< orphan*/  pTpAllocPool ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static BOOL FUNC3(void)
{
    hntdll = FUNC0("ntdll");
    if (!hntdll)
    {
        FUNC2("Could not load ntdll\n");
        return FALSE;
    }

    FUNC1(TpAllocCleanupGroup);
    FUNC1(TpAllocPool);
    FUNC1(TpAllocTimer);
    FUNC1(TpAllocWait);
    FUNC1(TpAllocWork);
    FUNC1(TpCallbackMayRunLong);
    FUNC1(TpCallbackReleaseSemaphoreOnCompletion);
    FUNC1(TpDisassociateCallback);
    FUNC1(TpIsTimerSet);
    FUNC1(TpPostWork);
    FUNC1(TpReleaseCleanupGroup);
    FUNC1(TpReleaseCleanupGroupMembers);
    FUNC1(TpReleasePool);
    FUNC1(TpReleaseTimer);
    FUNC1(TpReleaseWait);
    FUNC1(TpReleaseWork);
    FUNC1(TpSetPoolMaxThreads);
    FUNC1(TpSetTimer);
    FUNC1(TpSetWait);
    FUNC1(TpSimpleTryPost);
    FUNC1(TpWaitForTimer);
    FUNC1(TpWaitForWait);
    FUNC1(TpWaitForWork);

    if (!pTpAllocPool)
    {
        FUNC2("Threadpool functions not supported, skipping tests\n");
        return FALSE;
    }

    return TRUE;
}