
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_9__ ;
typedef struct TYPE_21__ TYPE_8__ ;
typedef struct TYPE_20__ TYPE_7__ ;
typedef struct TYPE_19__ TYPE_6__ ;
typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


struct TYPE_18__ {TYPE_6__* pdode; int pdo; } ;
typedef TYPE_5__ volume_device_extension ;
struct TYPE_19__ {int uuid; } ;
typedef TYPE_6__ pdo_device_extension ;
struct TYPE_22__ {int StableGuid; } ;
struct TYPE_15__ {int OutputBufferLength; } ;
struct TYPE_16__ {TYPE_2__ DeviceIoControl; } ;
struct TYPE_21__ {TYPE_3__ Parameters; } ;
struct TYPE_17__ {int Information; } ;
struct TYPE_14__ {TYPE_9__* SystemBuffer; } ;
struct TYPE_20__ {TYPE_4__ IoStatus; TYPE_1__ AssociatedIrp; } ;
typedef TYPE_7__* PIRP ;
typedef TYPE_8__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;
typedef TYPE_9__ MOUNTDEV_STABLE_GUID ;
typedef int BTRFS_UUID ;


 TYPE_8__* IoGetCurrentIrpStackLocation (TYPE_7__*) ;
 int RtlCopyMemory (int *,int *,int) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS vol_query_stable_guid(volume_device_extension* vde, PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    MOUNTDEV_STABLE_GUID* mdsg;
    pdo_device_extension* pdode;

    if (IrpSp->Parameters.DeviceIoControl.OutputBufferLength < sizeof(MOUNTDEV_STABLE_GUID)) {
        Irp->IoStatus.Information = sizeof(MOUNTDEV_STABLE_GUID);
        return STATUS_BUFFER_TOO_SMALL;
    }

    mdsg = Irp->AssociatedIrp.SystemBuffer;

    if (!vde->pdo)
        return STATUS_INVALID_PARAMETER;

    pdode = vde->pdode;

    RtlCopyMemory(&mdsg->StableGuid, &pdode->uuid, sizeof(BTRFS_UUID));

    Irp->IoStatus.Information = sizeof(MOUNTDEV_STABLE_GUID);

    return STATUS_SUCCESS;
}
