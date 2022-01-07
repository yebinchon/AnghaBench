
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PIRP ;
typedef int PFILE_OBJECT ;
typedef int PDEVICE_OBJECT ;
typedef int NTSTATUS ;
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
 int TDI_DISASSOCIATE_ADDRESS ;
 int TdiBuildDisassociateAddress (int ,int ,int ,int *,int *) ;
 int TdiBuildInternalDeviceControlIrp (int ,int ,int ,int *,int *) ;
 int TdiCall (int ,int ,int *,int *) ;

NTSTATUS TdiDisassociateAddressFile(
    PFILE_OBJECT ConnectionObject)







{
    PDEVICE_OBJECT DeviceObject;
    IO_STATUS_BLOCK Iosb;
    KEVENT Event;
    PIRP Irp;

    AFD_DbgPrint(MAX_TRACE, ("Called. ConnectionObject (%p)\n", ConnectionObject));

    if (!ConnectionObject) {
        AFD_DbgPrint(MIN_TRACE, ("Bad connection object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    DeviceObject = IoGetRelatedDeviceObject(ConnectionObject);
    if (!DeviceObject) {
        AFD_DbgPrint(MIN_TRACE, ("Bad device object.\n"));
        return STATUS_INVALID_PARAMETER;
    }

    KeInitializeEvent(&Event, NotificationEvent, FALSE);

    Irp = TdiBuildInternalDeviceControlIrp(TDI_DISASSOCIATE_ADDRESS,
                                           DeviceObject,
                                           ConnectionObject,
                                           &Event,
                                           &Iosb);
    if (!Irp)
        return STATUS_INSUFFICIENT_RESOURCES;

    TdiBuildDisassociateAddress(Irp,
                                DeviceObject,
                                ConnectionObject,
                                ((void*)0),
                                ((void*)0));

    return TdiCall(Irp, DeviceObject, &Event, &Iosb);
}
