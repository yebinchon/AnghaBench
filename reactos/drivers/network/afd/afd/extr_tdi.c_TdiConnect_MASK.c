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
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PTDI_CONNECTION_INFORMATION ;
typedef  int /*<<< orphan*/ * PIRP ;
typedef  int /*<<< orphan*/  PIO_COMPLETION_ROUTINE ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_PENDING ; 
 int /*<<< orphan*/  TDI_CONNECT ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC6(
    PIRP *Irp,
    PFILE_OBJECT ConnectionObject,
    PTDI_CONNECTION_INFORMATION ConnectionCallInfo,
    PTDI_CONNECTION_INFORMATION ConnectionReturnInfo,
    PIO_COMPLETION_ROUTINE CompletionRoutine,
    PVOID CompletionContext)
/*
 * FUNCTION: Connect a connection endpoint to a remote peer
 * ARGUMENTS:
 *     ConnectionObject = Pointer to connection endpoint file object
 *     RemoteAddress    = Pointer to remote address
 * RETURNS:
 *     Status of operation
 */
{
    PDEVICE_OBJECT DeviceObject;

    FUNC0(MAX_TRACE, ("Called\n"));

    FUNC1(*Irp == NULL);

    if (!ConnectionObject) {
        FUNC0(MIN_TRACE, ("Bad connection object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    DeviceObject = FUNC2(ConnectionObject);
    if (!DeviceObject) {
        FUNC0(MIN_TRACE, ("Bad device object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    *Irp = FUNC4(TDI_CONNECT,             /* Sub function */
                                            DeviceObject,            /* Device object */
                                            ConnectionObject,        /* File object */
                                            NULL,                    /* Event */
                                            NULL);                   /* Status */
    if (!*Irp) {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC3(*Irp,                   /* IRP */
                    DeviceObject,           /* Device object */
                    ConnectionObject,       /* File object */
                    CompletionRoutine,      /* Completion routine */
                    CompletionContext,      /* Completion routine context */
                    NULL,                   /* Time */
                    ConnectionCallInfo,     /* Request connection information */
                    ConnectionReturnInfo);  /* Return connection information */

    FUNC5(*Irp, DeviceObject, NULL, NULL);

    return STATUS_PENDING;
}