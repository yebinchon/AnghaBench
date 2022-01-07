
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_6__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ MajorFunction; int FileObject; int MinorFunction; } ;
struct TYPE_9__ {int IrpContextLookasideList; } ;
struct TYPE_7__ {int Size; int Type; } ;
struct TYPE_8__ {scalar_t__ MajorFunction; int IsTopLevel; int Flags; int PriorityBoost; TYPE_6__* Stack; int FileObject; int MinorFunction; int DeviceObject; scalar_t__ Irp; TYPE_1__ Identifier; } ;
typedef TYPE_2__* PNTFS_IRP_CONTEXT ;
typedef scalar_t__ PIRP ;
typedef int PDEVICE_OBJECT ;
typedef int NTFS_IRP_CONTEXT ;


 scalar_t__ ExAllocateFromNPagedLookasideList (int *) ;
 int IO_NO_INCREMENT ;
 int IRPCONTEXT_CANWAIT ;
 int IRPCONTEXT_COMPLETE ;
 scalar_t__ IRP_MJ_CLEANUP ;
 scalar_t__ IRP_MJ_CLOSE ;
 scalar_t__ IRP_MJ_DEVICE_CONTROL ;
 scalar_t__ IRP_MJ_FILE_SYSTEM_CONTROL ;
 scalar_t__ IRP_MJ_SHUTDOWN ;
 TYPE_6__* IoGetCurrentIrpStackLocation (scalar_t__) ;
 scalar_t__ IoGetTopLevelIrp () ;
 scalar_t__ IoIsOperationSynchronous (scalar_t__) ;
 int NTFS ;
 int NTFS_TYPE_IRP_CONTEXT ;
 TYPE_4__* NtfsGlobalData ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 int TRACE_ (int ,char*) ;

PNTFS_IRP_CONTEXT
NtfsAllocateIrpContext(PDEVICE_OBJECT DeviceObject,
                       PIRP Irp)
{
    PNTFS_IRP_CONTEXT IrpContext;

    TRACE_(NTFS, "NtfsAllocateIrpContext()\n");

    IrpContext = (PNTFS_IRP_CONTEXT)ExAllocateFromNPagedLookasideList(&NtfsGlobalData->IrpContextLookasideList);
    if (IrpContext == ((void*)0))
        return ((void*)0);

    RtlZeroMemory(IrpContext, sizeof(NTFS_IRP_CONTEXT));

    IrpContext->Identifier.Type = NTFS_TYPE_IRP_CONTEXT;
    IrpContext->Identifier.Size = sizeof(NTFS_IRP_CONTEXT);
    IrpContext->Irp = Irp;
    IrpContext->DeviceObject = DeviceObject;
    IrpContext->Stack = IoGetCurrentIrpStackLocation(Irp);
    IrpContext->MajorFunction = IrpContext->Stack->MajorFunction;
    IrpContext->MinorFunction = IrpContext->Stack->MinorFunction;
    IrpContext->FileObject = IrpContext->Stack->FileObject;
    IrpContext->IsTopLevel = (IoGetTopLevelIrp() == Irp);
    IrpContext->PriorityBoost = IO_NO_INCREMENT;
    IrpContext->Flags = IRPCONTEXT_COMPLETE;

    if (IrpContext->MajorFunction == IRP_MJ_FILE_SYSTEM_CONTROL ||
        IrpContext->MajorFunction == IRP_MJ_DEVICE_CONTROL ||
        IrpContext->MajorFunction == IRP_MJ_SHUTDOWN ||
        (IrpContext->MajorFunction != IRP_MJ_CLEANUP &&
         IrpContext->MajorFunction != IRP_MJ_CLOSE &&
         IoIsOperationSynchronous(Irp)))
    {
        IrpContext->Flags |= IRPCONTEXT_CANWAIT;
    }

    return IrpContext;
}
