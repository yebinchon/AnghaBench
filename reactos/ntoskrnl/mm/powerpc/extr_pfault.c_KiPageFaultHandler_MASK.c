#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_7__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int vaddr_t ;
struct TYPE_9__ {int dsisr; int srr0; int dar; int srr1; } ;
typedef  TYPE_2__ ppc_trap_frame_t ;
struct TYPE_8__ {scalar_t__ UserApcPending; } ;
struct TYPE_11__ {TYPE_1__ ApcState; } ;
struct TYPE_10__ {int NumberParameters; int* ExceptionInformation; scalar_t__ ExceptionFlags; int /*<<< orphan*/ * ExceptionAddress; int /*<<< orphan*/ * ExceptionRecord; int /*<<< orphan*/  ExceptionCode; } ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KTRAP_FRAME ;
typedef  int /*<<< orphan*/  KPROCESSOR_MODE ;
typedef  int /*<<< orphan*/  KIRQL ;
typedef  TYPE_3__ EXCEPTION_RECORD ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  APC_LEVEL ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_7__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_ACCESS_VIOLATION ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  UserMode ; 

void FUNC11(int trap, ppc_trap_frame_t *frame)
{
    NTSTATUS Status = STATUS_SUCCESS;
    KPROCESSOR_MODE Mode;
    EXCEPTION_RECORD Er;
    KTRAP_FRAME Tf;
    BOOLEAN AccessFault = !!(frame->dsisr & (1<<28));
    vaddr_t VirtualAddr;
    PVOID TrapInfo = NULL;

    /* get the faulting address */
    if (trap == 4) /* Instruction miss */
        VirtualAddr = frame->srr0;
    else /* Data miss */
        VirtualAddr = frame->dar;

    /* MSR_PR */
    Mode = frame->srr1 & 0x4000 ? UserMode : KernelMode;
    FUNC0("Page Fault at %08x\n", frame->srr0);

    /* handle the fault */
    if (AccessFault)
    {
        Status = FUNC6(Mode, (PVOID)VirtualAddr, FALSE, TrapInfo);
    }
    else
    {
        Status = FUNC7(Mode, VirtualAddr, FALSE);
    }

    if (FUNC10(Status))
    {
        FUNC9();
    }

    if (FUNC1()->ApcState.UserApcPending)
    {
        KIRQL oldIrql;

        FUNC3(APC_LEVEL, &oldIrql);
        FUNC4(UserMode, NULL, NULL);
        FUNC2(oldIrql);
    }

    FUNC8(frame, &Tf);

    Er.ExceptionCode = STATUS_ACCESS_VIOLATION;
    Er.ExceptionFlags = 0;
    Er.ExceptionRecord = NULL;
    Er.ExceptionAddress = (PVOID)frame->srr0;
    Er.NumberParameters = 2;
    Er.ExceptionInformation[0] = AccessFault;
    Er.ExceptionInformation[1] = VirtualAddr;

    /* FIXME: Which exceptions are noncontinuable? */
    Er.ExceptionFlags = 0;

    FUNC5(&Er, 0, &Tf, Mode, TRUE);
    FUNC9();
}