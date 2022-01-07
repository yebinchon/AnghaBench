
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int vaddr_t ;
struct TYPE_9__ {int dsisr; int srr0; int dar; int srr1; } ;
typedef TYPE_2__ ppc_trap_frame_t ;
struct TYPE_8__ {scalar_t__ UserApcPending; } ;
struct TYPE_11__ {TYPE_1__ ApcState; } ;
struct TYPE_10__ {int NumberParameters; int* ExceptionInformation; scalar_t__ ExceptionFlags; int * ExceptionAddress; int * ExceptionRecord; int ExceptionCode; } ;
typedef int * PVOID ;
typedef int NTSTATUS ;
typedef int KTRAP_FRAME ;
typedef int KPROCESSOR_MODE ;
typedef int KIRQL ;
typedef TYPE_3__ EXCEPTION_RECORD ;
typedef int BOOLEAN ;


 int APC_LEVEL ;
 int DPRINT (char*,int) ;
 int FALSE ;
 TYPE_7__* KeGetCurrentThread () ;
 int KeLowerIrql (int ) ;
 int KeRaiseIrql (int ,int *) ;
 int KernelMode ;
 int KiDeliverApc (int ,int *,int *) ;
 int KiDispatchException (TYPE_3__*,int ,int *,int ,int ) ;
 int MmAccessFault (int ,int *,int ,int *) ;
 int MmNotPresentFault (int ,int,int ) ;
 int MmpPpcTrapFrameToTrapFrame (TYPE_2__*,int *) ;
 int MmuCallbackRet () ;
 scalar_t__ NT_SUCCESS (int ) ;
 int STATUS_ACCESS_VIOLATION ;
 int STATUS_SUCCESS ;
 int TRUE ;
 int UserMode ;

void KiPageFaultHandler(int trap, ppc_trap_frame_t *frame)
{
    NTSTATUS Status = STATUS_SUCCESS;
    KPROCESSOR_MODE Mode;
    EXCEPTION_RECORD Er;
    KTRAP_FRAME Tf;
    BOOLEAN AccessFault = !!(frame->dsisr & (1<<28));
    vaddr_t VirtualAddr;
    PVOID TrapInfo = ((void*)0);


    if (trap == 4)
        VirtualAddr = frame->srr0;
    else
        VirtualAddr = frame->dar;


    Mode = frame->srr1 & 0x4000 ? UserMode : KernelMode;
    DPRINT("Page Fault at %08x\n", frame->srr0);


    if (AccessFault)
    {
        Status = MmAccessFault(Mode, (PVOID)VirtualAddr, FALSE, TrapInfo);
    }
    else
    {
        Status = MmNotPresentFault(Mode, VirtualAddr, FALSE);
    }

    if (NT_SUCCESS(Status))
    {
        MmuCallbackRet();
    }

    if (KeGetCurrentThread()->ApcState.UserApcPending)
    {
        KIRQL oldIrql;

        KeRaiseIrql(APC_LEVEL, &oldIrql);
        KiDeliverApc(UserMode, ((void*)0), ((void*)0));
        KeLowerIrql(oldIrql);
    }

    MmpPpcTrapFrameToTrapFrame(frame, &Tf);

    Er.ExceptionCode = STATUS_ACCESS_VIOLATION;
    Er.ExceptionFlags = 0;
    Er.ExceptionRecord = ((void*)0);
    Er.ExceptionAddress = (PVOID)frame->srr0;
    Er.NumberParameters = 2;
    Er.ExceptionInformation[0] = AccessFault;
    Er.ExceptionInformation[1] = VirtualAddr;


    Er.ExceptionFlags = 0;

    KiDispatchException(&Er, 0, &Tf, Mode, TRUE);
    MmuCallbackRet();
}
