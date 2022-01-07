
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_8__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_15__ {int uuid; } ;
struct TYPE_17__ {TYPE_3__ superblock; } ;
typedef TYPE_5__ device_extension ;
struct TYPE_20__ {int StableGuid; } ;
struct TYPE_13__ {int OutputBufferLength; } ;
struct TYPE_14__ {TYPE_1__ DeviceIoControl; } ;
struct TYPE_19__ {TYPE_2__ Parameters; } ;
struct TYPE_16__ {int Information; } ;
struct TYPE_18__ {TYPE_4__ IoStatus; TYPE_8__* UserBuffer; } ;
typedef TYPE_6__* PIRP ;
typedef TYPE_7__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;
typedef TYPE_8__ MOUNTDEV_STABLE_GUID ;
typedef int GUID ;


 TYPE_7__* IoGetCurrentIrpStackLocation (TYPE_6__*) ;
 int RtlCopyMemory (int *,int *,int) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int TRACE (char*) ;

__attribute__((used)) static NTSTATUS mountdev_query_stable_guid(device_extension* Vcb, PIRP Irp) {
    MOUNTDEV_STABLE_GUID* msg = Irp->UserBuffer;
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);

    TRACE("IOCTL_MOUNTDEV_QUERY_STABLE_GUID\n");

    if (IrpSp->Parameters.DeviceIoControl.OutputBufferLength < sizeof(MOUNTDEV_STABLE_GUID))
        return STATUS_INVALID_PARAMETER;

    RtlCopyMemory(&msg->StableGuid, &Vcb->superblock.uuid, sizeof(GUID));

    Irp->IoStatus.Information = sizeof(MOUNTDEV_STABLE_GUID);

    return STATUS_SUCCESS;
}
