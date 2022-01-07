
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


struct TYPE_20__ {scalar_t__ Status; } ;
struct TYPE_16__ {TYPE_5__* Capabilities; } ;
struct TYPE_17__ {TYPE_2__ DeviceCapabilities; } ;
struct TYPE_19__ {int Size; int Version; int Address; int UINumber; TYPE_3__ Parameters; int MinorFunction; int MajorFunction; } ;
struct TYPE_15__ {int Status; } ;
struct TYPE_18__ {TYPE_1__ IoStatus; } ;
typedef TYPE_4__* PIRP ;
typedef TYPE_5__* PIO_STACK_LOCATION ;
typedef int PDEVICE_OBJECT ;
typedef TYPE_5__* PDEVICE_CAPABILITIES ;
typedef scalar_t__ NTSTATUS ;
typedef int KEVENT ;
typedef TYPE_7__ IO_STATUS_BLOCK ;
typedef int IO_STACK_LOCATION ;
typedef int DEVICE_CAPABILITIES ;


 int Executive ;
 int FALSE ;
 int IRP_MJ_PNP ;
 int IRP_MN_QUERY_CAPABILITIES ;
 TYPE_4__* IoBuildSynchronousFsdRequest (int ,int ,int *,int ,int *,int *,TYPE_7__*) ;
 scalar_t__ IoCallDriver (int ,TYPE_4__*) ;
 int IoGetAttachedDeviceReference (int ) ;
 TYPE_5__* IoGetNextIrpStackLocation (TYPE_4__*) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 int NotificationEvent ;
 int ObDereferenceObject (int ) ;
 int PAGED_CODE () ;
 int RtlZeroMemory (TYPE_5__*,int) ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_NOT_SUPPORTED ;
 scalar_t__ STATUS_PENDING ;

NTSTATUS
Bus_GetDeviceCapabilities(
      PDEVICE_OBJECT DeviceObject,
      PDEVICE_CAPABILITIES DeviceCapabilities
    )
{
    IO_STATUS_BLOCK ioStatus;
    KEVENT pnpEvent;
    NTSTATUS status;
    PDEVICE_OBJECT targetObject;
    PIO_STACK_LOCATION irpStack;
    PIRP pnpIrp;

    PAGED_CODE();




    RtlZeroMemory( DeviceCapabilities, sizeof(DEVICE_CAPABILITIES) );
    DeviceCapabilities->Size = sizeof(DEVICE_CAPABILITIES);
    DeviceCapabilities->Version = 1;
    DeviceCapabilities->Address = -1;
    DeviceCapabilities->UINumber = -1;




    KeInitializeEvent( &pnpEvent, NotificationEvent, FALSE );

    targetObject = IoGetAttachedDeviceReference( DeviceObject );




    pnpIrp = IoBuildSynchronousFsdRequest(
        IRP_MJ_PNP,
        targetObject,
        ((void*)0),
        0,
        ((void*)0),
        &pnpEvent,
        &ioStatus
        );
    if (pnpIrp == ((void*)0)) {

        status = STATUS_INSUFFICIENT_RESOURCES;
        goto GetDeviceCapabilitiesExit;

    }




    pnpIrp->IoStatus.Status = STATUS_NOT_SUPPORTED;




    irpStack = IoGetNextIrpStackLocation( pnpIrp );




    RtlZeroMemory( irpStack, sizeof(IO_STACK_LOCATION ) );
    irpStack->MajorFunction = IRP_MJ_PNP;
    irpStack->MinorFunction = IRP_MN_QUERY_CAPABILITIES;
    irpStack->Parameters.DeviceCapabilities.Capabilities = DeviceCapabilities;




    status = IoCallDriver( targetObject, pnpIrp );
    if (status == STATUS_PENDING) {
        KeWaitForSingleObject(
            &pnpEvent,
            Executive,
            KernelMode,
            FALSE,
            ((void*)0)
            );
        status = ioStatus.Status;

    }

GetDeviceCapabilitiesExit:



    ObDereferenceObject( targetObject );




    return status;

}
