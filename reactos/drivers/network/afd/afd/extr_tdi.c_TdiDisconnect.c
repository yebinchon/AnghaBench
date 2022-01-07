
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int USHORT ;
typedef int PVOID ;
typedef int PTDI_CONNECTION_INFORMATION ;
typedef int PLARGE_INTEGER ;
typedef int PIRP ;
typedef int PIO_COMPLETION_ROUTINE ;
typedef int PFILE_OBJECT ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int AFD_DbgPrint (int ,char*) ;
 int IoGetRelatedDeviceObject (int ) ;
 int MID_TRACE ;
 int MIN_TRACE ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_PENDING ;
 int TDI_DISCONNECT ;
 int TdiBuildDisconnect (int ,int ,int ,int ,int ,int ,int ,int ,int ) ;
 int TdiBuildInternalDeviceControlIrp (int ,int ,int ,int *,int *) ;
 int TdiCall (int ,int ,int *,int *) ;

NTSTATUS TdiDisconnect(
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
        AFD_DbgPrint(MIN_TRACE, ("Bad transport object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    AFD_DbgPrint(MID_TRACE,("Called(TransportObject %p)\n", TransportObject));

    DeviceObject = IoGetRelatedDeviceObject(TransportObject);
    if (!DeviceObject) {
        AFD_DbgPrint(MIN_TRACE, ("Bad device object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    *Irp = TdiBuildInternalDeviceControlIrp(TDI_DISCONNECT,
                                            DeviceObject,
                                            TransportObject,
                                            ((void*)0),
                                            ((void*)0));

    if (!*Irp) {
        AFD_DbgPrint(MIN_TRACE, ("Insufficient resources.\n"));
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    TdiBuildDisconnect(*Irp,
                       DeviceObject,
                       TransportObject,
                       CompletionRoutine,
                       CompletionContext,
                       Time,
                       Flags,
                       RequestConnectionInfo,
                       ReturnConnectionInfo);

    TdiCall(*Irp, DeviceObject, ((void*)0), ((void*)0));

    return STATUS_PENDING;
}
