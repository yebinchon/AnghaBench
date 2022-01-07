
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;
typedef struct TYPE_27__ TYPE_10__ ;


typedef scalar_t__ ULONG ;
struct TYPE_36__ {TYPE_6__* FsContext; } ;
struct TYPE_29__ {int FileInformationClass; scalar_t__ Length; } ;
struct TYPE_30__ {TYPE_2__ QueryFile; } ;
struct TYPE_35__ {TYPE_3__ Parameters; } ;
struct TYPE_31__ {scalar_t__ Information; } ;
struct TYPE_28__ {int SystemBuffer; } ;
struct TYPE_34__ {TYPE_4__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_33__ {int MainResource; } ;
struct TYPE_32__ {int Flags; TYPE_9__* FileObject; TYPE_10__* DeviceObject; TYPE_8__* Stack; TYPE_7__* Irp; } ;
struct TYPE_27__ {int DeviceExtension; } ;
typedef int PVOID ;
typedef TYPE_5__* PNTFS_IRP_CONTEXT ;
typedef TYPE_6__* PNTFS_FCB ;
typedef TYPE_7__* PIRP ;
typedef TYPE_8__* PIO_STACK_LOCATION ;
typedef TYPE_9__* PFILE_OBJECT ;
typedef TYPE_10__* PDEVICE_OBJECT ;
typedef int NTSTATUS ;
typedef int FILE_INFORMATION_CLASS ;


 int BooleanFlagOn (int ,int ) ;
 int DPRINT1 (char*,TYPE_5__*) ;
 int ExAcquireResourceSharedLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 TYPE_5__* GetInfoClassName (int) ;
 int IRPCONTEXT_CANWAIT ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtfsGetBasicInformation (TYPE_9__*,TYPE_6__*,TYPE_10__*,int ,scalar_t__*) ;
 int NtfsGetInternalInformation (TYPE_6__*,int ,scalar_t__*) ;
 int NtfsGetNameInformation (TYPE_9__*,TYPE_6__*,TYPE_10__*,int ,scalar_t__*) ;
 int NtfsGetNetworkOpenInformation (TYPE_6__*,int ,int ,scalar_t__*) ;
 int NtfsGetPositionInformation (TYPE_9__*,int ,scalar_t__*) ;
 int NtfsGetStandardInformation (TYPE_6__*,TYPE_10__*,int ,scalar_t__*) ;
 int NtfsGetSteamInformation (TYPE_6__*,int ,int ,scalar_t__*) ;
 int NtfsMarkIrpContextForQueue (TYPE_5__*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_SUCCESS ;

NTSTATUS
NtfsQueryInformation(PNTFS_IRP_CONTEXT IrpContext)
{
    FILE_INFORMATION_CLASS FileInformationClass;
    PIO_STACK_LOCATION Stack;
    PFILE_OBJECT FileObject;
    PNTFS_FCB Fcb;
    PVOID SystemBuffer;
    ULONG BufferLength;
    PIRP Irp;
    PDEVICE_OBJECT DeviceObject;
    NTSTATUS Status = STATUS_SUCCESS;

    DPRINT1("NtfsQueryInformation(%p)\n", IrpContext);

    Irp = IrpContext->Irp;
    Stack = IrpContext->Stack;
    DeviceObject = IrpContext->DeviceObject;
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
        case 129:
            Status = NtfsGetStandardInformation(Fcb,
                                                DeviceObject,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case 130:
            Status = NtfsGetPositionInformation(FileObject,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case 134:
            Status = NtfsGetBasicInformation(FileObject,
                                             Fcb,
                                             DeviceObject,
                                             SystemBuffer,
                                             &BufferLength);
            break;

        case 132:
            Status = NtfsGetNameInformation(FileObject,
                                            Fcb,
                                            DeviceObject,
                                            SystemBuffer,
                                            &BufferLength);
            break;

        case 133:
            Status = NtfsGetInternalInformation(Fcb,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case 131:
            Status = NtfsGetNetworkOpenInformation(Fcb,
                                                   DeviceObject->DeviceExtension,
                                                   SystemBuffer,
                                                   &BufferLength);
            break;

        case 128:
            Status = NtfsGetSteamInformation(Fcb,
                                             DeviceObject->DeviceExtension,
                                             SystemBuffer,
                                             &BufferLength);
            break;

        case 135:
        case 136:
            DPRINT1("Unimplemented information class: %s\n", GetInfoClassName(FileInformationClass));
            Status = STATUS_NOT_IMPLEMENTED;
            break;

        default:
            DPRINT1("Unimplemented information class: %s\n", GetInfoClassName(FileInformationClass));
            Status = STATUS_INVALID_PARAMETER;
    }

    ExReleaseResourceLite(&Fcb->MainResource);

    if (NT_SUCCESS(Status))
        Irp->IoStatus.Information =
            Stack->Parameters.QueryFile.Length - BufferLength;
    else
        Irp->IoStatus.Information = 0;

    return Status;
}
