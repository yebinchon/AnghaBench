
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_13__ {int Pcb; } ;
struct TYPE_11__ {int KernelStack; } ;
struct TYPE_12__ {TYPE_1__ Tcb; TYPE_3__* ThreadsProcess; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_2__* PETHREAD ;
typedef TYPE_3__* PEPROCESS ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 int FALSE ;
 int KdbApcState ;
 TYPE_3__* KdbCurrentProcess ;
 TYPE_2__* KdbCurrentThread ;
 int * KdbCurrentTrapFrame ;
 TYPE_3__* KdbOriginalProcess ;
 TYPE_2__* KdbOriginalThread ;
 int KdbThreadTrapFrame ;
 int KdbTrapFrame ;
 int KdbpKdbTrapFrameFromKernelStack (int ,int *) ;
 int KdbpPrint (char*,...) ;
 scalar_t__ KeIsExecutingDpc () ;
 int KeStackAttachProcess (int *,int *) ;
 int KeUnstackDetachProcess (int *) ;
 int NT_SUCCESS (int ) ;
 int ObDereferenceObject (TYPE_2__*) ;
 TYPE_3__* PsGetCurrentProcess () ;
 int PsLookupThreadByThreadId (scalar_t__,TYPE_2__**) ;
 int TRUE ;

BOOLEAN
KdbpAttachToThread(
    PVOID ThreadId)
{
    PETHREAD Thread = ((void*)0);
    PEPROCESS Process;


    if (!NT_SUCCESS(PsLookupThreadByThreadId(ThreadId, &Thread)))
    {
        KdbpPrint("Invalid thread id: 0x%08x\n", (ULONG_PTR)ThreadId);
        return FALSE;
    }
    Process = Thread->ThreadsProcess;

    if (KeIsExecutingDpc() && Process != KdbCurrentProcess)
    {
        KdbpPrint("Cannot attach to thread within another process while executing a DPC.\n");
        ObDereferenceObject(Thread);
        return FALSE;
    }


    if (KdbCurrentThread != KdbOriginalThread)
    {
        ASSERT(KdbCurrentTrapFrame == &KdbThreadTrapFrame);

    }
    else
    {
        ASSERT(KdbCurrentTrapFrame == &KdbTrapFrame);
    }


    if (Thread != KdbOriginalThread)
    {





        KdbpKdbTrapFrameFromKernelStack(Thread->Tcb.KernelStack,
                                        &KdbThreadTrapFrame);
        KdbCurrentTrapFrame = &KdbThreadTrapFrame;
    }
    else
    {
        KdbCurrentTrapFrame = &KdbTrapFrame;
    }
    KdbCurrentThread = Thread;


    ASSERT(KdbCurrentProcess == PsGetCurrentProcess());
    if (KdbCurrentProcess != Process)
    {
        if (KdbCurrentProcess != KdbOriginalProcess)
        {
            KeUnstackDetachProcess(&KdbApcState);
        }

        if (KdbOriginalProcess != Process)
        {
            KeStackAttachProcess(&Process->Pcb, &KdbApcState);
        }

        KdbCurrentProcess = Process;
    }

    ObDereferenceObject(Thread);
    return TRUE;
}
