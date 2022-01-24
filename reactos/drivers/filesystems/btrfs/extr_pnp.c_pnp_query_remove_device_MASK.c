#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int removing; scalar_t__ open_files; int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  readonly; scalar_t__ need_write; TYPE_6__* root_fileref; } ;
typedef  TYPE_1__ device_extension ;
struct TYPE_11__ {scalar_t__ open_count; scalar_t__ fcb; } ;
struct TYPE_10__ {TYPE_1__* DeviceExtension; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_2__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRP_MN_QUERY_REMOVE_DEVICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 scalar_t__ FUNC7 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 

NTSTATUS FUNC10(PDEVICE_OBJECT DeviceObject, PIRP Irp) {
    device_extension* Vcb = DeviceObject->DeviceExtension;
    NTSTATUS Status;

    FUNC1(&Vcb->tree_lock, true);

    if (Vcb->root_fileref && Vcb->root_fileref->fcb && (Vcb->root_fileref->open_count > 0 || FUNC7(Vcb->root_fileref))) {
        FUNC2(&Vcb->tree_lock);
        return STATUS_ACCESS_DENIED;
    }

    Status = FUNC8(Vcb, IRP_MN_QUERY_REMOVE_DEVICE);
    if (!FUNC3(Status)) {
        FUNC4("send_disks_pnp_message returned %08x\n", Status);
        FUNC2(&Vcb->tree_lock);
        return Status;
    }

    Vcb->removing = true;

    if (Vcb->need_write && !Vcb->readonly) {
        Status = FUNC5(Vcb, Irp);

        FUNC6(Vcb);

        if (!FUNC3(Status)) {
            FUNC0("do_write returned %08x\n", Status);
            FUNC2(&Vcb->tree_lock);
            return Status;
        }
    }

    FUNC2(&Vcb->tree_lock);

    if (Vcb->open_files == 0)
        FUNC9(Vcb);

    return STATUS_SUCCESS;
}