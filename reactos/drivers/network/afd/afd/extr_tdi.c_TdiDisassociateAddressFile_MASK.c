#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  KEVENT ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  NotificationEvent ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  TDI_DISASSOCIATE_ADDRESS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC6(
    PFILE_OBJECT ConnectionObject)
/*
 * FUNCTION: Disassociates a connection endpoint from an address file object
 * ARGUMENTS:
 *     ConnectionObject = Connection endpoint file object
 * RETURNS:
 *     Status of operation
 */
{
    PDEVICE_OBJECT DeviceObject;
    IO_STATUS_BLOCK Iosb;
    KEVENT Event;
    PIRP Irp;

    FUNC0(MAX_TRACE, ("Called. ConnectionObject (%p)\n", ConnectionObject));

    if (!ConnectionObject) {
        FUNC0(MIN_TRACE, ("Bad connection object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    DeviceObject = FUNC1(ConnectionObject);
    if (!DeviceObject) {
        FUNC0(MIN_TRACE, ("Bad device object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    FUNC2(&Event, NotificationEvent, FALSE);

    Irp = FUNC4(TDI_DISASSOCIATE_ADDRESS,   /* Sub function */
                                           DeviceObject,            /* Device object */
                                           ConnectionObject,        /* File object */
                                           &Event,                  /* Event */
                                           &Iosb);                  /* Status */
    if (!Irp)
        return STATUS_INSUFFICIENT_RESOURCES;

    FUNC3(Irp,
                                DeviceObject,
                                ConnectionObject,
                                NULL,
                                NULL);

    return FUNC5(Irp, DeviceObject, &Event, &Iosb);
}