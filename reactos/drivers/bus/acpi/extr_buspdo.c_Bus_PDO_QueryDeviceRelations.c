
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ULONG_PTR ;
struct TYPE_21__ {int Count; int * Objects; } ;
struct TYPE_14__ {int Type; } ;
struct TYPE_15__ {TYPE_1__ QueryDeviceRelations; } ;
struct TYPE_20__ {TYPE_2__ Parameters; } ;
struct TYPE_17__ {int Status; int Information; } ;
struct TYPE_19__ {TYPE_4__ IoStatus; } ;
struct TYPE_16__ {int Self; } ;
struct TYPE_18__ {TYPE_3__ Common; } ;
typedef TYPE_5__* PPDO_DEVICE_DATA ;
typedef TYPE_6__* PIRP ;
typedef TYPE_7__* PIO_STACK_LOCATION ;
typedef TYPE_8__* PDEVICE_RELATIONS ;
typedef int NTSTATUS ;
typedef int DEVICE_RELATIONS ;


 int ASSERTMSG (char*,int) ;


 TYPE_8__* ExAllocatePoolWithTag (int ,int,char) ;
 TYPE_7__* IoGetCurrentIrpStackLocation (TYPE_6__*) ;
 int ObReferenceObject (int ) ;
 int PAGED_CODE () ;
 int PagedPool ;

 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;


NTSTATUS
Bus_PDO_QueryDeviceRelations(
     PPDO_DEVICE_DATA DeviceData,
      PIRP Irp )
{

    PIO_STACK_LOCATION stack;
    PDEVICE_RELATIONS deviceRelations;
    NTSTATUS status;

    PAGED_CODE ();

    stack = IoGetCurrentIrpStackLocation (Irp);

    switch (stack->Parameters.QueryDeviceRelations.Type) {

    case 128:

        deviceRelations = (PDEVICE_RELATIONS) Irp->IoStatus.Information;
        if (deviceRelations) {




            ASSERTMSG("Someone above is handling TargetDeviceRelation\n", !deviceRelations);
        }

        deviceRelations = ExAllocatePoolWithTag(PagedPool,
                                                sizeof(DEVICE_RELATIONS),
                                                'IpcA');
        if (!deviceRelations) {
                status = STATUS_INSUFFICIENT_RESOURCES;
                break;
        }
        deviceRelations->Count = 1;
        deviceRelations->Objects[0] = DeviceData->Common.Self;
        ObReferenceObject(DeviceData->Common.Self);

        status = STATUS_SUCCESS;
        Irp->IoStatus.Information = (ULONG_PTR) deviceRelations;
        break;

    case 131:
    case 130:
    case 129:
    default:
        status = Irp->IoStatus.Status;
    }

    return status;
}
