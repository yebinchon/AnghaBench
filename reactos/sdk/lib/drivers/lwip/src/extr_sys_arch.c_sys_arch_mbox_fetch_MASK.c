#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32_t ;
struct TYPE_9__ {int /*<<< orphan*/  Lock; int /*<<< orphan*/  Event; int /*<<< orphan*/  ListHead; } ;
typedef  TYPE_1__ sys_mbox_t ;
typedef  int UINT64 ;
struct TYPE_11__ {int QuadPart; } ;
struct TYPE_10__ {int /*<<< orphan*/ * Message; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  TYPE_2__* PLWIP_MESSAGE_CONTAINER ;
typedef  int /*<<< orphan*/  PLIST_ENTRY ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_3__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 int FUNC3 (scalar_t__,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  LWIP_MESSAGE_CONTAINER ; 
 int /*<<< orphan*/  ListEntry ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ STATUS_WAIT_0 ; 
 scalar_t__ STATUS_WAIT_1 ; 
 scalar_t__ SYS_ARCH_TIMEOUT ; 
 int /*<<< orphan*/  TerminationEvent ; 
 int /*<<< orphan*/  WaitAny ; 

u32_t
FUNC12(sys_mbox_t *mbox, void **msg, u32_t timeout)
{
    LARGE_INTEGER LargeTimeout, PreWaitTime, PostWaitTime;
    UINT64 TimeDiff;
    NTSTATUS Status;
    PVOID Message;
    PLWIP_MESSAGE_CONTAINER Container;
    PLIST_ENTRY Entry;
    KIRQL OldIrql;
    PVOID WaitObjects[] = {&mbox->Event, &TerminationEvent};
    
    LargeTimeout.QuadPart = FUNC3(timeout, -10000);
    
    FUNC7(&PreWaitTime);

    Status = FUNC9(2,
                                      WaitObjects,
                                      WaitAny,
                                      Executive,
                                      KernelMode,
                                      FALSE,
                                      timeout != 0 ? &LargeTimeout : NULL,
                                      NULL);

    if (Status == STATUS_WAIT_0)
    {
        FUNC5(&mbox->Lock, &OldIrql);
        Entry = FUNC11(&mbox->ListHead);
        FUNC0(Entry);
        if (FUNC4(&mbox->ListHead))
            FUNC6(&mbox->Event);
        FUNC8(&mbox->Lock, OldIrql);
        
        Container = FUNC1(Entry, LWIP_MESSAGE_CONTAINER, ListEntry);
        Message = Container->Message;
        FUNC2(Container);
        
        if (msg)
            *msg = Message;

        FUNC7(&PostWaitTime);
        TimeDiff = PostWaitTime.QuadPart - PreWaitTime.QuadPart;
        TimeDiff /= 10000;
        
        return TimeDiff;
    }
    else if (Status == STATUS_WAIT_1)
    {
        /* DON'T remove ourselves from the thread list! */
        FUNC10(STATUS_SUCCESS);
        
        /* We should never get here! */
        FUNC0(FALSE);
        
        return 0;
    }
    
    return SYS_ARCH_TIMEOUT;
}