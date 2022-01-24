#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32_t ;
struct TYPE_6__ {int /*<<< orphan*/  Event; } ;
typedef  TYPE_1__ sys_sem_t ;
typedef  int UINT64 ;
struct TYPE_7__ {int QuadPart; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_2__ LARGE_INTEGER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ STATUS_WAIT_0 ; 
 scalar_t__ STATUS_WAIT_1 ; 
 scalar_t__ SYS_ARCH_TIMEOUT ; 
 int /*<<< orphan*/  TerminationEvent ; 
 int /*<<< orphan*/  WaitAny ; 

u32_t
FUNC5(sys_sem_t* sem, u32_t timeout)
{
    LARGE_INTEGER LargeTimeout, PreWaitTime, PostWaitTime;
    UINT64 TimeDiff;
    NTSTATUS Status;
    PVOID WaitObjects[] = {&sem->Event, &TerminationEvent};

    LargeTimeout.QuadPart = FUNC1(timeout, -10000);
    
    FUNC2(&PreWaitTime);

    Status = FUNC3(2,
                                      WaitObjects,
                                      WaitAny,
                                      Executive,
                                      KernelMode,
                                      FALSE,
                                      timeout != 0 ? &LargeTimeout : NULL,
                                      NULL);
    if (Status == STATUS_WAIT_0)
    {
        FUNC2(&PostWaitTime);
        TimeDiff = PostWaitTime.QuadPart - PreWaitTime.QuadPart;
        TimeDiff /= 10000;

        return TimeDiff;
    }
    else if (Status == STATUS_WAIT_1)
    {
        /* DON'T remove ourselves from the thread list! */
        FUNC4(STATUS_SUCCESS);
        
        /* We should never get here! */
        FUNC0(FALSE);
        
        return 0;
    }
    
    return SYS_ARCH_TIMEOUT;
}