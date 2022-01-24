#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ page_file_count; int removing; int /*<<< orphan*/  tree_lock; TYPE_2__* vde; int /*<<< orphan*/  open_files; int /*<<< orphan*/  readonly; scalar_t__ need_write; int /*<<< orphan*/  locked; int /*<<< orphan*/  root_file; scalar_t__ disallow_dismount; TYPE_1__* Vpb; } ;
typedef  TYPE_3__ device_extension ;
struct TYPE_11__ {int /*<<< orphan*/ * mounted_device; } ;
struct TYPE_10__ {int Flags; } ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FSRTL_VOLUME_DISMOUNT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int VPB_MOUNTED ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 

NTSTATUS FUNC12(device_extension* Vcb, bool shutdown, PIRP Irp) {
    NTSTATUS Status;
    bool open_files;

    FUNC5("FSCTL_DISMOUNT_VOLUME\n");

    if (!(Vcb->Vpb->Flags & VPB_MOUNTED))
        return STATUS_SUCCESS;

    if (!shutdown) {
        if (Vcb->disallow_dismount || Vcb->page_file_count != 0) {
            FUNC6("attempting to dismount boot volume or one containing a pagefile\n");
            return STATUS_ACCESS_DENIED;
        }

        Status = FUNC3(Vcb->root_file, FSRTL_VOLUME_DISMOUNT);
        if (!FUNC4(Status)) {
            FUNC6("FsRtlNotifyVolumeEvent returned %08x\n", Status);
        }
    }

    FUNC1(&Vcb->tree_lock, true);

    if (!Vcb->locked) {
        FUNC8(Vcb);

        if (Vcb->need_write && !Vcb->readonly) {
            Status = FUNC7(Vcb, Irp);

            if (!FUNC4(Status))
                FUNC0("do_write returned %08x\n", Status);
        }
    }

    FUNC9(Vcb);

    Vcb->removing = true;

    open_files = Vcb->open_files > 0;

    if (Vcb->vde) {
        FUNC11(Vcb);
        Vcb->vde->mounted_device = NULL;
    }

    FUNC2(&Vcb->tree_lock);

    if (!open_files)
        FUNC10(Vcb);

    return STATUS_SUCCESS;
}