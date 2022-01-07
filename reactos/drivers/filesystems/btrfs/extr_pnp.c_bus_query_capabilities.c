
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int UniqueID; int SilentInstall; } ;
struct TYPE_6__ {TYPE_4__* Capabilities; } ;
struct TYPE_7__ {TYPE_1__ DeviceCapabilities; } ;
struct TYPE_8__ {TYPE_2__ Parameters; } ;
typedef int PIRP ;
typedef TYPE_3__* PIO_STACK_LOCATION ;
typedef TYPE_4__* PDEVICE_CAPABILITIES ;
typedef int NTSTATUS ;


 TYPE_3__* IoGetCurrentIrpStackLocation (int ) ;
 int STATUS_SUCCESS ;

__attribute__((used)) static NTSTATUS bus_query_capabilities(PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    PDEVICE_CAPABILITIES dc = IrpSp->Parameters.DeviceCapabilities.Capabilities;

    dc->UniqueID = 1;
    dc->SilentInstall = 1;

    return STATUS_SUCCESS;
}
