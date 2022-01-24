#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ Status; } ;
struct TYPE_5__ {int /*<<< orphan*/  StorageDevice; } ;
typedef  TYPE_1__* PVCB ;
typedef  scalar_t__ PIRP ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  KEVENT ;
typedef  TYPE_2__ IO_STATUS_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  IRP_MJ_SHUTDOWN ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  NotificationEvent ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_PENDING ; 

__attribute__((used)) static
NTSTATUS
FUNC4(
    PVCB Vcb)
{
    PIRP Irp;
    KEVENT Event;
    NTSTATUS Status;
    IO_STATUS_BLOCK IoStatus;

    FUNC2(&Event, NotificationEvent, FALSE);
    Irp = FUNC0(IRP_MJ_SHUTDOWN, Vcb->StorageDevice,
                                       NULL, 0, NULL, &Event, &IoStatus);
    if (Irp)
    {
        Status = FUNC1(Vcb->StorageDevice, Irp);
        if (Status == STATUS_PENDING)
        {
            FUNC3(&Event, Executive, KernelMode, FALSE, NULL);
            Status = IoStatus.Status;
        }
    }
    else
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
    }

    return Status;
}