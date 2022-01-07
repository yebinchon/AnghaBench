
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PVOID ;
typedef int PIRP ;
typedef int PFILE_OBJECT ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef int LONG ;
typedef int KEVENT ;
typedef int IO_STATUS_BLOCK ;


 int AFD_DbgPrint (int ,char*) ;
 int FALSE ;
 int IoGetRelatedDeviceObject (int ) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int MAX_TRACE ;
 int MIN_TRACE ;
 int NotificationEvent ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int TDI_SET_EVENT_HANDLER ;
 int TdiBuildInternalDeviceControlIrp (int ,int ,int ,int *,int *) ;
 int TdiBuildSetEventHandler (int ,int ,int ,int *,int *,int ,int ,int ) ;
 int TdiCall (int ,int ,int *,int *) ;

NTSTATUS TdiSetEventHandler(
    PFILE_OBJECT FileObject,
    LONG EventType,
    PVOID Handler,
    PVOID Context)
{
    PDEVICE_OBJECT DeviceObject;
    IO_STATUS_BLOCK Iosb;
    KEVENT Event;
    PIRP Irp;

    AFD_DbgPrint(MAX_TRACE, ("Called\n"));

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

    Irp = TdiBuildInternalDeviceControlIrp(TDI_SET_EVENT_HANDLER,
                                           DeviceObject,
                                           FileObject,
                                           &Event,
                                           &Iosb);
    if (!Irp)
        return STATUS_INSUFFICIENT_RESOURCES;



    TdiBuildSetEventHandler(Irp,
                            DeviceObject,
                            FileObject,
                            ((void*)0),
                            ((void*)0),
                            EventType,
                            Handler,
                            Context);

    return TdiCall(Irp, DeviceObject, &Event, &Iosb);
}
