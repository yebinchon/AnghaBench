
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ u32_t ;
struct TYPE_9__ {int Lock; int Event; int ListHead; } ;
typedef TYPE_1__ sys_mbox_t ;
typedef int UINT64 ;
struct TYPE_11__ {int QuadPart; } ;
struct TYPE_10__ {int * Message; } ;
typedef int * PVOID ;
typedef TYPE_2__* PLWIP_MESSAGE_CONTAINER ;
typedef int PLIST_ENTRY ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_3__ LARGE_INTEGER ;
typedef int KIRQL ;


 int ASSERT (int ) ;
 TYPE_2__* CONTAINING_RECORD (int ,int ,int ) ;
 int ExFreePool (TYPE_2__*) ;
 int Executive ;
 int FALSE ;
 int Int32x32To64 (scalar_t__,int) ;
 scalar_t__ IsListEmpty (int *) ;
 int KeAcquireSpinLock (int *,int *) ;
 int KeClearEvent (int *) ;
 int KeQuerySystemTime (TYPE_3__*) ;
 int KeReleaseSpinLock (int *,int ) ;
 scalar_t__ KeWaitForMultipleObjects (int,int **,int ,int ,int ,int ,TYPE_3__*,int *) ;
 int KernelMode ;
 int LWIP_MESSAGE_CONTAINER ;
 int ListEntry ;
 int PsTerminateSystemThread (int ) ;
 int RemoveHeadList (int *) ;
 int STATUS_SUCCESS ;
 scalar_t__ STATUS_WAIT_0 ;
 scalar_t__ STATUS_WAIT_1 ;
 scalar_t__ SYS_ARCH_TIMEOUT ;
 int TerminationEvent ;
 int WaitAny ;

u32_t
sys_arch_mbox_fetch(sys_mbox_t *mbox, void **msg, u32_t timeout)
{
    LARGE_INTEGER LargeTimeout, PreWaitTime, PostWaitTime;
    UINT64 TimeDiff;
    NTSTATUS Status;
    PVOID Message;
    PLWIP_MESSAGE_CONTAINER Container;
    PLIST_ENTRY Entry;
    KIRQL OldIrql;
    PVOID WaitObjects[] = {&mbox->Event, &TerminationEvent};

    LargeTimeout.QuadPart = Int32x32To64(timeout, -10000);

    KeQuerySystemTime(&PreWaitTime);

    Status = KeWaitForMultipleObjects(2,
                                      WaitObjects,
                                      WaitAny,
                                      Executive,
                                      KernelMode,
                                      FALSE,
                                      timeout != 0 ? &LargeTimeout : ((void*)0),
                                      ((void*)0));

    if (Status == STATUS_WAIT_0)
    {
        KeAcquireSpinLock(&mbox->Lock, &OldIrql);
        Entry = RemoveHeadList(&mbox->ListHead);
        ASSERT(Entry);
        if (IsListEmpty(&mbox->ListHead))
            KeClearEvent(&mbox->Event);
        KeReleaseSpinLock(&mbox->Lock, OldIrql);

        Container = CONTAINING_RECORD(Entry, LWIP_MESSAGE_CONTAINER, ListEntry);
        Message = Container->Message;
        ExFreePool(Container);

        if (msg)
            *msg = Message;

        KeQuerySystemTime(&PostWaitTime);
        TimeDiff = PostWaitTime.QuadPart - PreWaitTime.QuadPart;
        TimeDiff /= 10000;

        return TimeDiff;
    }
    else if (Status == STATUS_WAIT_1)
    {

        PsTerminateSystemThread(STATUS_SUCCESS);


        ASSERT(FALSE);

        return 0;
    }

    return SYS_ARCH_TIMEOUT;
}
