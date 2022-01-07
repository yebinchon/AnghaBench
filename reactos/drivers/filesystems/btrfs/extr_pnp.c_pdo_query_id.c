
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int pdo_device_extension ;
struct TYPE_11__ {int IdType; } ;
struct TYPE_12__ {TYPE_1__ QueryId; } ;
struct TYPE_15__ {TYPE_2__ Parameters; } ;
struct TYPE_13__ {int Status; } ;
struct TYPE_14__ {TYPE_3__ IoStatus; } ;
typedef TYPE_4__* PIRP ;
typedef TYPE_5__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;




 TYPE_5__* IoGetCurrentIrpStackLocation (TYPE_4__*) ;
 int TRACE (char*) ;
 int pdo_query_device_id (int *,TYPE_4__*) ;
 int pdo_query_hardware_ids (TYPE_4__*) ;

__attribute__((used)) static NTSTATUS pdo_query_id(pdo_device_extension* pdode, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);

    switch (IrpSp->Parameters.QueryId.IdType) {
        case 129:
            TRACE("BusQueryDeviceID\n");
            return pdo_query_device_id(pdode, Irp);

        case 128:
            TRACE("BusQueryHardwareIDs\n");
            return pdo_query_hardware_ids(Irp);

        default:
            break;
    }

    return Irp->IoStatus.Status;
}
