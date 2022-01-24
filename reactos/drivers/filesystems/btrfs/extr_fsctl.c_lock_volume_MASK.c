#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_7__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  event; scalar_t__ thread; } ;
struct TYPE_12__ {scalar_t__ thread; } ;
struct TYPE_15__ {int locked; int lock_paused_balance; TYPE_3__ balance; int /*<<< orphan*/  locked_fileobj; TYPE_2__* Vpb; int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  readonly; scalar_t__ need_write; int /*<<< orphan*/  fileref_lock; TYPE_7__* root_fileref; TYPE_1__ scrub; } ;
typedef  TYPE_4__ device_extension ;
struct TYPE_17__ {scalar_t__ open_count; scalar_t__ fcb; } ;
struct TYPE_16__ {int /*<<< orphan*/  FileObject; } ;
struct TYPE_13__ {int Flags; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_5__* PIO_STACK_LOCATION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KIRQL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FSRTL_VOLUME_LOCK ; 
 int /*<<< orphan*/  FSRTL_VOLUME_LOCK_FAILED ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_5__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_DEVICE_NOT_READY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int VPB_LOCKED ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 scalar_t__ FUNC16 (TYPE_7__*) ; 

__attribute__((used)) static NTSTATUS FUNC17(device_extension* Vcb, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = FUNC5(Irp);
    NTSTATUS Status;
    KIRQL irql;
    bool lock_paused_balance = false;

    FUNC11("FSCTL_LOCK_VOLUME\n");

    if (Vcb->scrub.thread) {
        FUNC12("cannot lock while scrub running\n");
        return STATUS_DEVICE_NOT_READY;
    }

    if (Vcb->balance.thread) {
        FUNC12("cannot lock while balance running\n");
        return STATUS_DEVICE_NOT_READY;
    }

    FUNC11("locking volume\n");

    FUNC3(IrpSp->FileObject, FSRTL_VOLUME_LOCK);

    if (Vcb->locked)
        return STATUS_SUCCESS;

    FUNC1(&Vcb->fileref_lock, true);

    if (Vcb->root_fileref && Vcb->root_fileref->fcb && (Vcb->root_fileref->open_count > 0 || FUNC16(Vcb->root_fileref))) {
        Status = STATUS_ACCESS_DENIED;
        FUNC2(&Vcb->fileref_lock);
        goto end;
    }

    FUNC2(&Vcb->fileref_lock);

    if (Vcb->balance.thread && FUNC8(&Vcb->balance.event)) {
        FUNC1(&Vcb->tree_lock, true);
        FUNC7(&Vcb->balance.event);
        FUNC2(&Vcb->tree_lock);

        lock_paused_balance = true;
    }

    FUNC1(&Vcb->tree_lock, true);

    FUNC14(Vcb);

    if (Vcb->need_write && !Vcb->readonly)
        Status = FUNC13(Vcb, Irp);
    else
        Status = STATUS_SUCCESS;

    FUNC15(Vcb);

    FUNC2(&Vcb->tree_lock);

    if (!FUNC10(Status)) {
        FUNC0("do_write returned %08x\n", Status);
        goto end;
    }

    FUNC4(&irql);

    if (!(Vcb->Vpb->Flags & VPB_LOCKED)) {
        Vcb->Vpb->Flags |= VPB_LOCKED;
        Vcb->locked = true;
        Vcb->locked_fileobj = IrpSp->FileObject;
        Vcb->lock_paused_balance = lock_paused_balance;
    } else {
        Status = STATUS_ACCESS_DENIED;
        FUNC6(irql);

        if (lock_paused_balance)
            FUNC9(&Vcb->balance.event, 0, false);

        goto end;
    }

    FUNC6(irql);

    Status = STATUS_SUCCESS;

end:
    if (!FUNC10(Status))
        FUNC3(IrpSp->FileObject, FSRTL_VOLUME_LOCK_FAILED);

    return Status;
}