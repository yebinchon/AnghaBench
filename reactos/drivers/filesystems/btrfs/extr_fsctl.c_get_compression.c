
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_10__ {int OutputBufferLength; } ;
struct TYPE_11__ {TYPE_1__ FileSystemControl; } ;
struct TYPE_15__ {TYPE_2__ Parameters; } ;
struct TYPE_12__ {int Information; } ;
struct TYPE_13__ {int * SystemBuffer; } ;
struct TYPE_14__ {TYPE_3__ IoStatus; int * MdlAddress; TYPE_4__ AssociatedIrp; } ;
typedef TYPE_5__* PIRP ;
typedef TYPE_6__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;


 int COMPRESSION_FORMAT_NONE ;
 TYPE_6__* IoGetCurrentIrpStackLocation (TYPE_5__*) ;
 int LowPagePriority ;
 int * MmGetSystemAddressForMdlSafe (int *,int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_INVALID_USER_BUFFER ;
 int STATUS_SUCCESS ;
 int TRACE (char*) ;

__attribute__((used)) static NTSTATUS get_compression(PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    USHORT* compression;

    TRACE("FSCTL_GET_COMPRESSION\n");

    if (Irp->AssociatedIrp.SystemBuffer) {
        compression = Irp->AssociatedIrp.SystemBuffer;
    } else if (Irp->MdlAddress != ((void*)0)) {
        compression = MmGetSystemAddressForMdlSafe(Irp->MdlAddress, LowPagePriority);

        if (!compression)
            return STATUS_INSUFFICIENT_RESOURCES;
    } else
        return STATUS_INVALID_USER_BUFFER;

    if (IrpSp->Parameters.FileSystemControl.OutputBufferLength < sizeof(USHORT))
        return STATUS_INVALID_PARAMETER;

    *compression = COMPRESSION_FORMAT_NONE;

    Irp->IoStatus.Information = sizeof(USHORT);

    return STATUS_SUCCESS;
}
