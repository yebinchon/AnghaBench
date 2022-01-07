
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
struct TYPE_9__ {int InputBufferLength; } ;
struct TYPE_10__ {TYPE_1__ FileSystemControl; } ;
struct TYPE_13__ {TYPE_2__ Parameters; } ;
struct TYPE_11__ {scalar_t__* SystemBuffer; } ;
struct TYPE_12__ {TYPE_3__ AssociatedIrp; } ;
typedef TYPE_4__* PIRP ;
typedef TYPE_5__* PIO_STACK_LOCATION ;
typedef int NTSTATUS ;


 scalar_t__ COMPRESSION_FORMAT_NONE ;
 TYPE_5__* IoGetCurrentIrpStackLocation (TYPE_4__*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int TRACE (char*) ;

__attribute__((used)) static NTSTATUS set_compression(PIRP Irp) {
    PIO_STACK_LOCATION IrpSp = IoGetCurrentIrpStackLocation(Irp);
    USHORT* compression;

    TRACE("FSCTL_SET_COMPRESSION\n");

    if (IrpSp->Parameters.FileSystemControl.InputBufferLength < sizeof(USHORT))
        return STATUS_INVALID_PARAMETER;

    compression = Irp->AssociatedIrp.SystemBuffer;

    if (*compression != COMPRESSION_FORMAT_NONE)
        return STATUS_INVALID_PARAMETER;

    return STATUS_SUCCESS;
}
