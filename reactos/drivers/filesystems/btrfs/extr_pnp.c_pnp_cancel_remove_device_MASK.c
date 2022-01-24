#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_5__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  tree_lock; int /*<<< orphan*/  fileref_lock; TYPE_5__* root_fileref; } ;
typedef  TYPE_1__ device_extension ;
struct TYPE_8__ {scalar_t__ open_count; scalar_t__ fcb; } ;
struct TYPE_7__ {TYPE_1__* DeviceExtension; } ;
typedef  TYPE_2__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IRP_MN_CANCEL_REMOVE_DEVICE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static NTSTATUS FUNC7(PDEVICE_OBJECT DeviceObject) {
    device_extension* Vcb = DeviceObject->DeviceExtension;
    NTSTATUS Status;

    FUNC1(&Vcb->tree_lock, true);

    FUNC0(&Vcb->fileref_lock, true);

    if (Vcb->root_fileref && Vcb->root_fileref->fcb && (Vcb->root_fileref->open_count > 0 || FUNC5(Vcb->root_fileref))) {
        Status = STATUS_ACCESS_DENIED;
        goto end;
    }

    Status = FUNC6(Vcb, IRP_MN_CANCEL_REMOVE_DEVICE);
    if (!FUNC3(Status)) {
        FUNC4("send_disks_pnp_message returned %08x\n", Status);
        goto end;
    }

end:
    FUNC2(&Vcb->fileref_lock);
    FUNC2(&Vcb->tree_lock);

    return STATUS_SUCCESS;
}