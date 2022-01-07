
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {long long QuadPart; } ;
typedef int PVOID ;
typedef int PTHREAD_START_ROUTINE ;
typedef int NTSTATUS ;
typedef scalar_t__ LONG ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int HANDLE ;


 int FALSE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtClose (int ) ;
 int NtDelayExecution (int ,TYPE_1__*) ;
 int NtResumeThread (int ,int *) ;
 int RtlpStartThreadFunc (int ,int ,int *) ;

__attribute__((used)) static NTSTATUS
RtlpStartWorkerThread(PTHREAD_START_ROUTINE StartRoutine)
{
    NTSTATUS Status;
    HANDLE ThreadHandle;
    LARGE_INTEGER Timeout;
    volatile LONG WorkerInitialized = 0;

    Timeout.QuadPart = -10000LL;


    Status = RtlpStartThreadFunc(StartRoutine, (PVOID)&WorkerInitialized, &ThreadHandle);
    if (NT_SUCCESS(Status))
    {
        NtResumeThread(ThreadHandle, ((void*)0));


        while (WorkerInitialized == 0)
        {
            NtDelayExecution(FALSE,
                             &Timeout);
        }

        NtClose(ThreadHandle);
    }

    return Status;
}
