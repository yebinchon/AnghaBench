
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_24__ TYPE_7__ ;
typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_22__ {int attached_device; } ;
typedef TYPE_5__ bus_device_extension ;
struct TYPE_19__ {int IdType; } ;
struct TYPE_18__ {int Type; } ;
struct TYPE_20__ {TYPE_2__ QueryId; TYPE_1__ QueryDeviceRelations; } ;
struct TYPE_24__ {int MinorFunction; TYPE_3__ Parameters; } ;
struct TYPE_21__ {void* Status; } ;
struct TYPE_23__ {TYPE_4__ IoStatus; } ;
typedef TYPE_6__* PIRP ;
typedef TYPE_7__* PIO_STACK_LOCATION ;
typedef void* NTSTATUS ;


 int BusQueryHardwareIDs ;
 int BusRelations ;
 int IO_NO_INCREMENT ;



 void* IoCallDriver (int ,TYPE_6__*) ;
 int IoCompleteRequest (TYPE_6__*,int ) ;
 TYPE_7__* IoGetCurrentIrpStackLocation (TYPE_6__*) ;
 int IoSkipCurrentIrpStackLocation (TYPE_6__*) ;
 int NT_SUCCESS (void*) ;
 void* bus_query_capabilities (TYPE_6__*) ;
 void* bus_query_device_relations (TYPE_6__*) ;
 void* bus_query_hardware_ids (TYPE_6__*) ;
 int no_pnp ;

__attribute__((used)) static NTSTATUS bus_pnp(bus_device_extension* bde, PIRP Irp) {
    NTSTATUS Status = Irp->IoStatus.Status;
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    bool handled = 0;

    switch (IrpSp->MinorFunction) {
        case 130:
            Status = bus_query_capabilities(Irp);
            handled = 1;
            break;

        case 129:
            if (IrpSp->Parameters.QueryDeviceRelations.Type != BusRelations || no_pnp)
                break;

            Status = bus_query_device_relations(Irp);
            handled = 1;
            break;

        case 128:
            if (IrpSp->Parameters.QueryId.IdType != BusQueryHardwareIDs)
                break;

            Status = bus_query_hardware_ids(Irp);
            handled = 1;
            break;
    }

    if (!NT_SUCCESS(Status) && handled) {
        Irp->IoStatus.Status = Status;
        IoCompleteRequest(Irp, IO_NO_INCREMENT);

        return Status;
    }

    Irp->IoStatus.Status = Status;

    IoSkipCurrentIrpStackLocation(Irp);
    return IoCallDriver(bde->attached_device, Irp);
}
