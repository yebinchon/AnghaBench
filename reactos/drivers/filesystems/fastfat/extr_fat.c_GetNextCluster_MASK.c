#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_7__ {int Flags; } ;
struct TYPE_6__ {int /*<<< orphan*/  FatResource; int /*<<< orphan*/  (* GetNextCluster ) (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ;} ;
typedef  int /*<<< orphan*/  PULONG ;
typedef  TYPE_1__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_FILE_CORRUPT_ERROR ; 
 int /*<<< orphan*/  TRUE ; 
 int VFAT_BREAK_ON_CORRUPTION ; 
 TYPE_3__* VfatGlobalData ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,scalar_t__,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC6(
    PDEVICE_EXTENSION DeviceExt,
    ULONG CurrentCluster,
    PULONG NextCluster)
{
    NTSTATUS Status;

    FUNC1("GetNextCluster(DeviceExt %p, CurrentCluster %x)\n",
           DeviceExt, CurrentCluster);

    if (CurrentCluster == 0)
    {
        FUNC2("WARNING: File system corruption detected. You may need to run a disk repair utility.\n");
        if (VfatGlobalData->Flags & VFAT_BREAK_ON_CORRUPTION)
            FUNC0(CurrentCluster != 0);
        return STATUS_FILE_CORRUPT_ERROR;
    }

    FUNC3(&DeviceExt->FatResource, TRUE);
    Status = DeviceExt->GetNextCluster(DeviceExt, CurrentCluster, NextCluster);
    FUNC4(&DeviceExt->FatResource);

    return Status;
}