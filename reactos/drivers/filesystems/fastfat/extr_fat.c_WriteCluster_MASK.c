#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_4__ {int /*<<< orphan*/  FatResource; int /*<<< orphan*/  AvailableClusters; scalar_t__ AvailableClustersValid; int /*<<< orphan*/  (* WriteCluster ) (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__*) ;} ;
typedef  int /*<<< orphan*/  PLONG ;
typedef  TYPE_1__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__*) ; 

NTSTATUS
FUNC5(
    PDEVICE_EXTENSION DeviceExt,
    ULONG ClusterToWrite,
    ULONG NewValue)
{
    NTSTATUS Status;
    ULONG OldValue;

    FUNC0 (&DeviceExt->FatResource, TRUE);
    Status = DeviceExt->WriteCluster(DeviceExt, ClusterToWrite, NewValue, &OldValue);
    if (DeviceExt->AvailableClustersValid)
    {
        if (OldValue && NewValue == 0)
            FUNC3((PLONG)&DeviceExt->AvailableClusters);
        else if (OldValue == 0 && NewValue)
            FUNC2((PLONG)&DeviceExt->AvailableClusters);
    }
    FUNC1(&DeviceExt->FatResource);
    return Status;
}