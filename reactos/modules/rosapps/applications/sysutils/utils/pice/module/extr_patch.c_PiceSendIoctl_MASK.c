#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {scalar_t__ Status; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/ * PIRP ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  KEVENT ;
typedef  TYPE_1__ IO_STATUS_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Executive ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KernelMode ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  NotificationEvent ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_PENDING ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  TRUE ; 

NTSTATUS FUNC7(PDEVICE_OBJECT Target, ULONG Ioctl,
					PVOID InputBuffer, ULONG InputBufferLength)
{
    KEVENT          event;
    NTSTATUS        status = STATUS_SUCCESS;
    IO_STATUS_BLOCK iosb;
    PIRP            irp;

    FUNC4(&event,
                      NotificationEvent,
                      FALSE
                      );

    if (NULL == (irp = FUNC2(Ioctl,
                                                     Target,
                                                     InputBuffer,
                                                     InputBufferLength,
                                                     0,
                                                     0,
                                                     TRUE,
                                                     &event,
                                                     &iosb))) {
		FUNC1((0,"PiceSendIoctl: STATUS_INSUFFICIENT_RESOURCES\n"));
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    status = FUNC3(Target, irp);

    if (STATUS_PENDING == status) {

		status = FUNC5(&event,
                                       Executive,
                                       KernelMode,
                                       FALSE,
                                       NULL);

        FUNC0(STATUS_SUCCESS == status);
        status = iosb.Status;
    }
	FUNC1((0,"PiceSendIoctl: status: %d\n",FUNC6(status)));
    return status;
}