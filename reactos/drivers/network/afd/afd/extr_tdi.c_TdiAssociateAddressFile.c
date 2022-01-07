
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
typedef int HANDLE ;


 int AFD_DbgPrint (int ,char*) ;
 int FALSE ;
 int IoGetRelatedDeviceObject (int ) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int MAX_TRACE ;
 int MIN_TRACE ;
 int NotificationEvent ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int TDI_ASSOCIATE_ADDRESS ;
 int TdiBuildAssociateAddress (int ,int ,int ,int *,int *,int ) ;
 int TdiBuildInternalDeviceControlIrp (int ,int ,int ,int *,int *) ;
 int TdiCall (int ,int ,int *,int *) ;

NTSTATUS TdiAssociateAddressFile(
    HANDLE AddressHandle,
    PFILE_OBJECT ConnectionObject)
{
    PDEVICE_OBJECT DeviceObject;
    IO_STATUS_BLOCK Iosb;
    KEVENT Event;
    PIRP Irp;

    AFD_DbgPrint(MAX_TRACE, ("Called. AddressHandle (%p)  ConnectionObject (%p)\n",
                             AddressHandle, ConnectionObject));

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

    Irp = TdiBuildInternalDeviceControlIrp(TDI_ASSOCIATE_ADDRESS,
                                           DeviceObject,
                                           ConnectionObject,
                                           &Event,
                                           &Iosb);
    if (!Irp)
        return STATUS_INSUFFICIENT_RESOURCES;

    TdiBuildAssociateAddress(Irp,
                             DeviceObject,
                             ConnectionObject,
                             ((void*)0),
                             ((void*)0),
                             AddressHandle);

    return TdiCall(Irp, DeviceObject, &Event, &Iosb);
}
