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
typedef  int /*<<< orphan*/  USHORT ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PTDI_CONNECTION_INFORMATION ;
typedef  int /*<<< orphan*/  PLARGE_INTEGER ;
typedef  int /*<<< orphan*/  PIRP ;
typedef  int /*<<< orphan*/  PIO_COMPLETION_ROUTINE ;
typedef  int /*<<< orphan*/  PFILE_OBJECT ;
typedef  int /*<<< orphan*/  PDEVICE_OBJECT ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MID_TRACE ; 
 int /*<<< orphan*/  MIN_TRACE ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_PENDING ; 
 int /*<<< orphan*/  TDI_DISCONNECT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

NTSTATUS FUNC5(
    PIRP *Irp,
    PFILE_OBJECT TransportObject,
    PLARGE_INTEGER Time,
    USHORT Flags,
    PIO_COMPLETION_ROUTINE CompletionRoutine,
    PVOID CompletionContext,
    PTDI_CONNECTION_INFORMATION RequestConnectionInfo,
    PTDI_CONNECTION_INFORMATION ReturnConnectionInfo) {
    PDEVICE_OBJECT DeviceObject;

    if (!TransportObject) {
        FUNC0(MIN_TRACE, ("Bad transport object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    FUNC0(MID_TRACE,("Called(TransportObject %p)\n", TransportObject));

    DeviceObject = FUNC1(TransportObject);
    if (!DeviceObject) {
        FUNC0(MIN_TRACE, ("Bad device object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    *Irp = FUNC3(TDI_DISCONNECT,          /* Sub function */
                                            DeviceObject,            /* Device object */
                                            TransportObject,         /* File object */
                                            NULL,                    /* Event */
                                            NULL);                   /* Status */

    if (!*Irp) {
        FUNC0(MIN_TRACE, ("Insufficient resources.\n"));
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC2(*Irp,                   /* I/O Request Packet */
                       DeviceObject,           /* Device object */
                       TransportObject,        /* File object */
                       CompletionRoutine,      /* Completion routine */
                       CompletionContext,      /* Completion context */
                       Time,                   /* Time */
                       Flags,                  /* Disconnect flags */
                       RequestConnectionInfo,  /* Indication of who to disconnect */
                       ReturnConnectionInfo);  /* Indication of who disconnected */

    FUNC4(*Irp, DeviceObject, NULL, NULL);

    return STATUS_PENDING;
}