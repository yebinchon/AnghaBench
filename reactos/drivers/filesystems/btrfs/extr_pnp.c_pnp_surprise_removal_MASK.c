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
struct TYPE_10__ {int removing; scalar_t__ open_files; int /*<<< orphan*/  tree_lock; TYPE_2__* vde; } ;
typedef  TYPE_3__ device_extension ;
struct TYPE_11__ {TYPE_1__* Vpb; TYPE_3__* DeviceExtension; } ;
struct TYPE_9__ {int /*<<< orphan*/ * mounted_device; } ;
struct TYPE_8__ {int Flags; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  TYPE_4__* PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int VPB_MOUNTED ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

NTSTATUS FUNC4(PDEVICE_OBJECT DeviceObject, PIRP Irp) {
    device_extension* Vcb = DeviceObject->DeviceExtension;

    FUNC2("(%p, %p)\n", DeviceObject, Irp);

    if (DeviceObject->Vpb->Flags & VPB_MOUNTED) {
        FUNC0(&Vcb->tree_lock, true);

        if (Vcb->vde)
            Vcb->vde->mounted_device = NULL;

        Vcb->removing = true;

        FUNC1(&Vcb->tree_lock);

        if (Vcb->open_files == 0)
            FUNC3(Vcb);
    }

    return STATUS_SUCCESS;
}