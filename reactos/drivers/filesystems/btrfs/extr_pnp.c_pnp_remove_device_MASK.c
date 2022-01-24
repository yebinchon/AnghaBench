#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int removing; scalar_t__ open_files; int /*<<< orphan*/  tree_lock; TYPE_2__* vde; int /*<<< orphan*/  root_file; } ;
typedef  TYPE_3__ device_extension ;
struct TYPE_11__ {TYPE_1__* Vpb; TYPE_3__* DeviceExtension; } ;
struct TYPE_9__ {int /*<<< orphan*/ * mounted_device; } ;
struct TYPE_8__ {int Flags; } ;
typedef  TYPE_4__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FSRTL_VOLUME_DISMOUNT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IRP_MN_REMOVE_DEVICE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int VPB_MOUNTED ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static NTSTATUS FUNC8(PDEVICE_OBJECT DeviceObject) {
    device_extension* Vcb = DeviceObject->DeviceExtension;
    NTSTATUS Status;

    FUNC1(&Vcb->tree_lock, true);

    Status = FUNC6(Vcb, IRP_MN_REMOVE_DEVICE);

    if (!FUNC4(Status))
        FUNC5("send_disks_pnp_message returned %08x\n", Status);

    FUNC2(&Vcb->tree_lock);

    if (DeviceObject->Vpb->Flags & VPB_MOUNTED) {
        Status = FUNC3(Vcb->root_file, FSRTL_VOLUME_DISMOUNT);
        if (!FUNC4(Status)) {
            FUNC5("FsRtlNotifyVolumeEvent returned %08x\n", Status);
        }

        if (Vcb->vde)
            Vcb->vde->mounted_device = NULL;

        FUNC0(&Vcb->tree_lock, true);
        Vcb->removing = true;
        FUNC2(&Vcb->tree_lock);

        if (Vcb->open_files == 0)
            FUNC7(Vcb);
    }

    return STATUS_SUCCESS;
}