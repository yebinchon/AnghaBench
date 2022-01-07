
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PMDL ;
typedef int PIRP ;
typedef int PFILE_OBJECT ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef int KEVENT ;
typedef int IO_STATUS_BLOCK ;


 int AFD_DbgPrint (int ,char*) ;
 int ConnectionObject ;
 int FALSE ;
 int IoGetRelatedDeviceObject (int ) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int MIN_TRACE ;
 int NotificationEvent ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int TDI_QUERY_INFORMATION ;
 int TdiBuildInternalDeviceControlIrp (int ,int ,int ,int *,int *) ;
 int TdiBuildQueryInformation (int ,int ,int ,int *,int *,int ,int ) ;
 int TdiCall (int ,int ,int *,int *) ;

NTSTATUS TdiQueryInformation(
    PFILE_OBJECT FileObject,
    LONG QueryType,
    PMDL MdlBuffer)
{
    PDEVICE_OBJECT DeviceObject;
    IO_STATUS_BLOCK Iosb;
    KEVENT Event;
    PIRP Irp;

    if (!FileObject) {
        AFD_DbgPrint(MIN_TRACE, ("Bad file object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    DeviceObject = IoGetRelatedDeviceObject(FileObject);
    if (!DeviceObject) {
        AFD_DbgPrint(MIN_TRACE, ("Bad device object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    KeInitializeEvent(&Event, NotificationEvent, FALSE);

    Irp = TdiBuildInternalDeviceControlIrp(TDI_QUERY_INFORMATION,
                                           DeviceObject,
                                           ConnectionObject,
                                           &Event,
                                           &Iosb);
    if (!Irp) {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    TdiBuildQueryInformation(Irp,
                             DeviceObject,
                             FileObject,
                             ((void*)0),
                             ((void*)0),
                             QueryType,
                             MdlBuffer);

    return TdiCall(Irp, DeviceObject, &Event, &Iosb);
}
