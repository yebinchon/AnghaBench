#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ Status; } ;
struct TYPE_7__ {TYPE_2__* UserIosb; int /*<<< orphan*/ * UserEvent; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * PKEVENT ;
typedef  TYPE_1__* PIRP ;
typedef  TYPE_2__* PIO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  KEVENT ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  NotificationEvent ; 
 scalar_t__ STATUS_CANCELLED ; 
 scalar_t__ STATUS_PENDING ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  StopEvent ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  WaitAny ; 

NTSTATUS FUNC7(
    PIRP Irp,
    PDEVICE_OBJECT DeviceObject,
    PIO_STATUS_BLOCK IoStatusBlock,
    BOOLEAN CanCancel)
/*
 * FUNCTION: Calls a transport driver device
 * ARGUMENTS:
 *     Irp           = Pointer to I/O Request Packet
 *     DeviceObject  = Pointer to device object to call
 *     IoStatusBlock = Address of buffer with I/O status block
 *     CanCancel     = TRUE if the IRP can be cancelled, FALSE if not
 * RETURNS:
 *     Status of operation
 * NOTES
 *     All requests are completed synchronously. A request may be cancelled
 */
{
	KEVENT Event;
	PKEVENT Events[2];
	NTSTATUS Status;
	Events[0] = &StopEvent;
	Events[1] = &Event;

	FUNC2(&Event, NotificationEvent, FALSE);
	Irp->UserEvent = &Event;
	Irp->UserIosb  = IoStatusBlock;

	Status = FUNC0(DeviceObject, Irp);

	if (Status == STATUS_PENDING)
		{
			if (CanCancel)
				{
					Status = FUNC4(2, (PVOID)Events, WaitAny, Executive, KernelMode, FALSE, NULL, NULL);

					if (FUNC3(&StopEvent) != 0)
						{
							if (FUNC1(Irp))
								{
									FUNC6(MAX_TRACE, ("Cancelled IRP.\n"));
								}
							else
								{
									FUNC6(MIN_TRACE, ("Could not cancel IRP.\n"));
								}
							return STATUS_CANCELLED;
						}
				}
			else
				Status = FUNC5(&Event, Executive, KernelMode, FALSE, NULL);
		}

	return (Status == STATUS_SUCCESS)? IoStatusBlock->Status : STATUS_SUCCESS;
}