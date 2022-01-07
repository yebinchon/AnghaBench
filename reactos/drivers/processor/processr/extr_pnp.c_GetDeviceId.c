
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {scalar_t__ Status; scalar_t__ Information; } ;
struct TYPE_14__ {int IdType; } ;
struct TYPE_15__ {TYPE_2__ QueryId; } ;
struct TYPE_17__ {TYPE_3__ Parameters; int MinorFunction; int MajorFunction; } ;
struct TYPE_13__ {int Status; } ;
struct TYPE_16__ {TYPE_1__ IoStatus; } ;
typedef scalar_t__ PWSTR ;
typedef TYPE_4__* PIRP ;
typedef TYPE_5__* PIO_STACK_LOCATION ;
typedef int PDEVICE_OBJECT ;
typedef scalar_t__ NTSTATUS ;
typedef int KEVENT ;
typedef TYPE_6__ IO_STATUS_BLOCK ;
typedef int IO_STACK_LOCATION ;
typedef int BUS_QUERY_ID_TYPE ;


 int Executive ;
 int FALSE ;
 int IRP_MJ_PNP ;
 int IRP_MN_QUERY_ID ;
 TYPE_4__* IoBuildSynchronousFsdRequest (int ,int ,int *,int ,int *,int *,TYPE_6__*) ;
 scalar_t__ IoCallDriver (int ,TYPE_4__*) ;
 int IoGetAttachedDeviceReference (int ) ;
 TYPE_5__* IoGetNextIrpStackLocation (TYPE_4__*) ;
 int KeInitializeEvent (int *,int ,int ) ;
 int KeWaitForSingleObject (int *,int ,int ,int ,int *) ;
 int KernelMode ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 int NotificationEvent ;
 int ObDereferenceObject (int ) ;
 int PAGED_CODE () ;
 int RtlZeroMemory (TYPE_5__*,int) ;
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_NOT_SUPPORTED ;
 scalar_t__ STATUS_PENDING ;

__attribute__((used)) static
NTSTATUS
GetDeviceId(
    PDEVICE_OBJECT DeviceObject,
    BUS_QUERY_ID_TYPE IdType,
    PWSTR *DeviceId)
{
    PIO_STACK_LOCATION IrpStack;
    IO_STATUS_BLOCK IoStatus;
    PDEVICE_OBJECT TargetObject;
    KEVENT Event;
    PIRP Irp;
    NTSTATUS Status;

    PAGED_CODE();


    KeInitializeEvent(&Event, NotificationEvent, FALSE);

    TargetObject = IoGetAttachedDeviceReference(DeviceObject);


    Irp = IoBuildSynchronousFsdRequest(IRP_MJ_PNP,
                                       TargetObject,
                                       ((void*)0),
                                       0,
                                       ((void*)0),
                                       &Event,
                                       &IoStatus);
    if (Irp == ((void*)0))
    {
        Status = STATUS_INSUFFICIENT_RESOURCES;
        goto done;
    }


    Irp->IoStatus.Status = STATUS_NOT_SUPPORTED;


    IrpStack = IoGetNextIrpStackLocation(Irp);


    RtlZeroMemory(IrpStack, sizeof(IO_STACK_LOCATION));
    IrpStack->MajorFunction = IRP_MJ_PNP;
    IrpStack->MinorFunction = IRP_MN_QUERY_ID;
    IrpStack->Parameters.QueryId.IdType = IdType;


    Status = IoCallDriver(TargetObject, Irp);
    if (Status == STATUS_PENDING)
    {
        KeWaitForSingleObject(&Event,
                              Executive,
                              KernelMode,
                              FALSE,
                              ((void*)0));

        Status = IoStatus.Status;
    }

    if (NT_SUCCESS(Status))
    {
        *DeviceId = (PWSTR)IoStatus.Information;
    }

done:

    ObDereferenceObject(TargetObject);

    return Status;
}
