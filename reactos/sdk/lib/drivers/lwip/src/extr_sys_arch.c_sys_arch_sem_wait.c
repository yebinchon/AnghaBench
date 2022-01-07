
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ u32_t ;
struct TYPE_6__ {int Event; } ;
typedef TYPE_1__ sys_sem_t ;
typedef int UINT64 ;
struct TYPE_7__ {int QuadPart; } ;
typedef int * PVOID ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_2__ LARGE_INTEGER ;


 int ASSERT (int ) ;
 int Executive ;
 int FALSE ;
 int Int32x32To64 (scalar_t__,int) ;
 int KeQuerySystemTime (TYPE_2__*) ;
 scalar_t__ KeWaitForMultipleObjects (int,int **,int ,int ,int ,int ,TYPE_2__*,int *) ;
 int KernelMode ;
 int PsTerminateSystemThread (int ) ;
 int STATUS_SUCCESS ;
 scalar_t__ STATUS_WAIT_0 ;
 scalar_t__ STATUS_WAIT_1 ;
 scalar_t__ SYS_ARCH_TIMEOUT ;
 int TerminationEvent ;
 int WaitAny ;

u32_t
sys_arch_sem_wait(sys_sem_t* sem, u32_t timeout)
{
    LARGE_INTEGER LargeTimeout, PreWaitTime, PostWaitTime;
    UINT64 TimeDiff;
    NTSTATUS Status;
    PVOID WaitObjects[] = {&sem->Event, &TerminationEvent};

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
