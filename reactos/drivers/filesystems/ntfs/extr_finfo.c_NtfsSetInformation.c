
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_9__ ;
typedef struct TYPE_26__ TYPE_8__ ;
typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


typedef scalar_t__ ULONG ;
struct TYPE_27__ {TYPE_6__* FsContext; } ;
struct TYPE_20__ {int FileInformationClass; scalar_t__ Length; } ;
struct TYPE_21__ {TYPE_2__ QueryFile; } ;
struct TYPE_26__ {TYPE_3__ Parameters; int Flags; } ;
struct TYPE_22__ {scalar_t__ Information; } ;
struct TYPE_19__ {int SystemBuffer; } ;
struct TYPE_25__ {TYPE_4__ IoStatus; int Flags; TYPE_1__ AssociatedIrp; } ;
struct TYPE_24__ {int MainResource; } ;
struct TYPE_23__ {int Flags; TYPE_9__* FileObject; TYPE_11__* DeviceObject; TYPE_8__* Stack; TYPE_7__* Irp; } ;
struct TYPE_18__ {int DeviceExtension; } ;
struct TYPE_17__ {int EndOfFile; } ;
typedef int PVOID ;
typedef TYPE_5__* PNTFS_IRP_CONTEXT ;
typedef TYPE_6__* PNTFS_FCB ;
typedef TYPE_7__* PIRP ;
typedef TYPE_8__* PIO_STACK_LOCATION ;
typedef TYPE_9__* PFILE_OBJECT ;
typedef TYPE_10__* PFILE_END_OF_FILE_INFORMATION ;
typedef TYPE_11__* PDEVICE_OBJECT ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FILE_INFORMATION_CLASS ;


 int BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,TYPE_5__*) ;
 int DPRINT1 (char*,...) ;
 int ExAcquireResourceSharedLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;


 int GetInfoClassName (int) ;
 int IRPCONTEXT_CANWAIT ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtfsMarkIrpContextForQueue (TYPE_5__*) ;
 int NtfsSetEndOfFile (TYPE_6__*,TYPE_9__*,int ,int ,int ,int *) ;
 int SL_CASE_SENSITIVE ;
 int STATUS_NOT_IMPLEMENTED ;

NTSTATUS
NtfsSetInformation(PNTFS_IRP_CONTEXT IrpContext)
{
    FILE_INFORMATION_CLASS FileInformationClass;
    PIO_STACK_LOCATION Stack;
    PDEVICE_EXTENSION DeviceExt;
    PFILE_OBJECT FileObject;
    PNTFS_FCB Fcb;
    PVOID SystemBuffer;
    ULONG BufferLength;
    PIRP Irp;
    PDEVICE_OBJECT DeviceObject;
    NTSTATUS Status = STATUS_NOT_IMPLEMENTED;

    DPRINT("NtfsSetInformation(%p)\n", IrpContext);

    Irp = IrpContext->Irp;
    Stack = IrpContext->Stack;
    DeviceObject = IrpContext->DeviceObject;
    DeviceExt = DeviceObject->DeviceExtension;
    FileInformationClass = Stack->Parameters.QueryFile.FileInformationClass;
    FileObject = IrpContext->FileObject;
    Fcb = FileObject->FsContext;

    SystemBuffer = Irp->AssociatedIrp.SystemBuffer;
    BufferLength = Stack->Parameters.QueryFile.Length;

    if (!ExAcquireResourceSharedLite(&Fcb->MainResource,
                                     BooleanFlagOn(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
    {
        return NtfsMarkIrpContextForQueue(IrpContext);
    }

    switch (FileInformationClass)
    {
        PFILE_END_OF_FILE_INFORMATION EndOfFileInfo;



        case 129:
            DPRINT1("FIXME: Using hacky method of setting FileAllocationInformation.\n");
        case 128:
            EndOfFileInfo = (PFILE_END_OF_FILE_INFORMATION)SystemBuffer;
            Status = NtfsSetEndOfFile(Fcb,
                                      FileObject,
                                      DeviceExt,
                                      Irp->Flags,
                                      BooleanFlagOn(Stack->Flags, SL_CASE_SENSITIVE),
                                      &EndOfFileInfo->EndOfFile);
            break;



        default:
            DPRINT1("FIXME: Unimplemented information class: %s\n", GetInfoClassName(FileInformationClass));
            Status = STATUS_NOT_IMPLEMENTED;
    }

    ExReleaseResourceLite(&Fcb->MainResource);

    if (NT_SUCCESS(Status))
        Irp->IoStatus.Information =
        Stack->Parameters.QueryFile.Length - BufferLength;
    else
        Irp->IoStatus.Information = 0;

    return Status;
}
