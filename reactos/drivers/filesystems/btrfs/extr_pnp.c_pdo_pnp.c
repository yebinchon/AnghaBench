
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int pdo_device_extension ;
struct TYPE_16__ {int * DeviceExtension; } ;
struct TYPE_15__ {int MinorFunction; } ;
struct TYPE_13__ {int Status; } ;
struct TYPE_14__ {TYPE_1__ IoStatus; } ;
typedef TYPE_2__* PIRP ;
typedef TYPE_3__* PIO_STACK_LOCATION ;
typedef TYPE_4__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;
 TYPE_3__* IoGetCurrentIrpStackLocation (TYPE_2__*) ;
 int STATUS_SUCCESS ;
 int STATUS_UNSUCCESSFUL ;
 int pdo_device_usage_notification (int *,TYPE_2__*) ;
 int pdo_query_device_relations (TYPE_4__*,TYPE_2__*) ;
 int pdo_query_id (int *,TYPE_2__*) ;

__attribute__((used)) static NTSTATUS pdo_pnp(PDEVICE_OBJECT pdo, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    pdo_device_extension* pdode = pdo->DeviceExtension;

    switch (IrpSp->MinorFunction) {
        case 132:
            return pdo_query_id(pdode, Irp);

        case 129:
        case 135:
        case 128:
        case 130:
            return STATUS_SUCCESS;

        case 131:
            return STATUS_UNSUCCESSFUL;

        case 134:
            return pdo_device_usage_notification(pdode, Irp);

        case 133:
            return pdo_query_device_relations(pdo, Irp);
    }

    return Irp->IoStatus.Status;
}
