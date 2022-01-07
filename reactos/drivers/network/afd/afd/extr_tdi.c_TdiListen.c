
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int PTDI_CONNECTION_INFORMATION ;
typedef int * PIRP ;
typedef int PIO_COMPLETION_ROUTINE ;
typedef int PFILE_OBJECT ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;


 int AFD_DbgPrint (int ,char*) ;
 int ASSERT (int ) ;
 int IoGetRelatedDeviceObject (int ) ;
 int MAX_TRACE ;
 int MIN_TRACE ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_PENDING ;
 int TDI_LISTEN ;
 int * TdiBuildInternalDeviceControlIrp (int ,int ,int ,int *,int *) ;
 int TdiBuildListen (int *,int ,int ,int ,int ,int ,int ,int ) ;
 int TdiCall (int *,int ,int *,int *) ;

NTSTATUS TdiListen(
    PIRP *Irp,
    PFILE_OBJECT ConnectionObject,
    PTDI_CONNECTION_INFORMATION *RequestConnectionInfo,
    PTDI_CONNECTION_INFORMATION *ReturnConnectionInfo,
    PIO_COMPLETION_ROUTINE CompletionRoutine,
    PVOID CompletionContext)
{
    PDEVICE_OBJECT DeviceObject;

    AFD_DbgPrint(MAX_TRACE, ("Called\n"));

    ASSERT(*Irp == ((void*)0));

    if (!ConnectionObject) {
        AFD_DbgPrint(MIN_TRACE, ("Bad connection object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    DeviceObject = IoGetRelatedDeviceObject(ConnectionObject);
    if (!DeviceObject) {
        AFD_DbgPrint(MIN_TRACE, ("Bad device object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    *Irp = TdiBuildInternalDeviceControlIrp(TDI_LISTEN,
                                            DeviceObject,
                                            ConnectionObject,
                                            ((void*)0),
                                            ((void*)0));
    if (*Irp == ((void*)0))
        return STATUS_INSUFFICIENT_RESOURCES;

    TdiBuildListen(*Irp,
                   DeviceObject,
                   ConnectionObject,
                   CompletionRoutine,
                   CompletionContext,
                   0,
                   *RequestConnectionInfo,
                   *ReturnConnectionInfo);

    TdiCall(*Irp, DeviceObject, ((void*)0) , ((void*)0));

    return STATUS_PENDING;
}
