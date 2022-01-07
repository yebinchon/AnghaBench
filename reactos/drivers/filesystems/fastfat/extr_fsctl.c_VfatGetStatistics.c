
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_19__ {int NumberProcessors; } ;
struct TYPE_18__ {int Statistics; } ;
struct TYPE_17__ {TYPE_5__* Irp; TYPE_2__* Stack; TYPE_8__* DeviceExt; } ;
struct TYPE_16__ {int OutputBufferLength; } ;
struct TYPE_14__ {int Information; } ;
struct TYPE_13__ {int * SystemBuffer; } ;
struct TYPE_15__ {TYPE_4__ IoStatus; TYPE_3__ AssociatedIrp; } ;
struct TYPE_11__ {TYPE_6__ FileSystemControl; } ;
struct TYPE_12__ {TYPE_1__ Parameters; } ;
typedef int STATISTICS ;
typedef int * PVOID ;
typedef TYPE_7__* PVFAT_IRP_CONTEXT ;
typedef TYPE_8__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FILESYSTEM_STATISTICS ;


 int RtlCopyMemory (int *,int ,int) ;
 int STATUS_BUFFER_OVERFLOW ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_INVALID_USER_BUFFER ;
 int STATUS_SUCCESS ;
 TYPE_9__* VfatGlobalData ;

__attribute__((used)) static
NTSTATUS
VfatGetStatistics(
    PVFAT_IRP_CONTEXT IrpContext)
{
    PVOID Buffer;
    ULONG Length;
    NTSTATUS Status;
    PDEVICE_EXTENSION DeviceExt;

    DeviceExt = IrpContext->DeviceExt;
    Length = IrpContext->Stack->Parameters.FileSystemControl.OutputBufferLength;
    Buffer = IrpContext->Irp->AssociatedIrp.SystemBuffer;

    if (Length < sizeof(FILESYSTEM_STATISTICS))
    {
        return STATUS_BUFFER_TOO_SMALL;
    }

    if (Buffer == ((void*)0))
    {
        return STATUS_INVALID_USER_BUFFER;
    }

    if (Length >= sizeof(STATISTICS) * VfatGlobalData->NumberProcessors)
    {
        Length = sizeof(STATISTICS) * VfatGlobalData->NumberProcessors;
        Status = STATUS_SUCCESS;
    }
    else
    {
        Status = STATUS_BUFFER_OVERFLOW;
    }

    RtlCopyMemory(Buffer, DeviceExt->Statistics, Length);
    IrpContext->Irp->IoStatus.Information = Length;

    return Status;
}
