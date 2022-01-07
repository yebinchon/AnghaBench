
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_12__ ;


typedef scalar_t__ ULONG ;
struct TYPE_33__ {int MainResource; int Flags; } ;
struct TYPE_32__ {TYPE_6__* Irp; TYPE_4__* Stack; int DeviceExt; TYPE_12__* FileObject; int Flags; } ;
struct TYPE_30__ {scalar_t__ Information; } ;
struct TYPE_26__ {int SystemBuffer; } ;
struct TYPE_31__ {TYPE_5__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_27__ {int FileInformationClass; scalar_t__ Length; } ;
struct TYPE_28__ {TYPE_2__ QueryFile; } ;
struct TYPE_29__ {TYPE_3__ Parameters; } ;
struct TYPE_25__ {scalar_t__ FsContext; } ;
typedef int PVOID ;
typedef TYPE_7__* PVFAT_IRP_CONTEXT ;
typedef TYPE_8__* PVFATFCB ;
typedef scalar_t__ NTSTATUS ;
typedef int FILE_INFORMATION_CLASS ;


 int ASSERT (TYPE_7__*) ;
 int BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,char*) ;
 int DPRINT1 (char*) ;
 int ExAcquireResourceSharedLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int FCB_IS_PAGE_FILE ;




 char** FileInformationClassNames ;

 int FileMaximumInformation ;




 int IRPCONTEXT_CANWAIT ;
 scalar_t__ NT_SUCCESS (scalar_t__) ;
 scalar_t__ STATUS_BUFFER_OVERFLOW ;
 scalar_t__ STATUS_INVALID_PARAMETER ;
 scalar_t__ STATUS_NOT_IMPLEMENTED ;
 scalar_t__ STATUS_SUCCESS ;
 scalar_t__ VfatGetAllInformation (TYPE_12__*,TYPE_8__*,int ,int ,scalar_t__*) ;
 scalar_t__ VfatGetBasicInformation (TYPE_12__*,TYPE_8__*,int ,int ,scalar_t__*) ;
 scalar_t__ VfatGetEaInformation (TYPE_12__*,TYPE_8__*,int ,int ,scalar_t__*) ;
 scalar_t__ VfatGetInternalInformation (TYPE_8__*,int ,int ,scalar_t__*) ;
 scalar_t__ VfatGetNameInformation (TYPE_12__*,TYPE_8__*,int ,int ,scalar_t__*) ;
 scalar_t__ VfatGetNetworkOpenInformation (TYPE_8__*,int ,int ,scalar_t__*) ;
 scalar_t__ VfatGetPositionInformation (TYPE_12__*,TYPE_8__*,int ,int ,scalar_t__*) ;
 scalar_t__ VfatGetStandardInformation (TYPE_8__*,int ,scalar_t__*) ;
 scalar_t__ VfatMarkIrpContextForQueue (TYPE_7__*) ;

NTSTATUS
VfatQueryInformation(
    PVFAT_IRP_CONTEXT IrpContext)
{
    FILE_INFORMATION_CLASS FileInformationClass;
    PVFATFCB FCB;

    NTSTATUS Status = STATUS_SUCCESS;
    PVOID SystemBuffer;
    ULONG BufferLength;


    ASSERT(IrpContext);


    FileInformationClass = IrpContext->Stack->Parameters.QueryFile.FileInformationClass;
    FCB = (PVFATFCB) IrpContext->FileObject->FsContext;

    DPRINT("VfatQueryInformation is called for '%s'\n",
           FileInformationClass >= FileMaximumInformation - 1 ? "????" : FileInformationClassNames[FileInformationClass]);

    if (FCB == ((void*)0))
    {
        DPRINT1("IRP_MJ_QUERY_INFORMATION without FCB!\n");
        IrpContext->Irp->IoStatus.Information = 0;
        return STATUS_INVALID_PARAMETER;
    }

    SystemBuffer = IrpContext->Irp->AssociatedIrp.SystemBuffer;
    BufferLength = IrpContext->Stack->Parameters.QueryFile.Length;

    if (!BooleanFlagOn(FCB->Flags, FCB_IS_PAGE_FILE))
    {
        if (!ExAcquireResourceSharedLite(&FCB->MainResource,
                                         BooleanFlagOn(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
        {
            return VfatMarkIrpContextForQueue(IrpContext);
        }
    }

    switch (FileInformationClass)
    {
        case 128:
            Status = VfatGetStandardInformation(FCB,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case 129:
            Status = VfatGetPositionInformation(IrpContext->FileObject,
                                                FCB,
                                                IrpContext->DeviceExt,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case 134:
            Status = VfatGetBasicInformation(IrpContext->FileObject,
                                             FCB,
                                             IrpContext->DeviceExt,
                                             SystemBuffer,
                                             &BufferLength);
            break;

        case 131:
            Status = VfatGetNameInformation(IrpContext->FileObject,
                                            FCB,
                                            IrpContext->DeviceExt,
                                            SystemBuffer,
                                            &BufferLength);
            break;

        case 132:
            Status = VfatGetInternalInformation(FCB,
                                                IrpContext->DeviceExt,
                                                SystemBuffer,
                                                &BufferLength);
            break;

        case 130:
            Status = VfatGetNetworkOpenInformation(FCB,
                                                   IrpContext->DeviceExt,
                                                   SystemBuffer,
                                                   &BufferLength);
            break;

        case 136:
            Status = VfatGetAllInformation(IrpContext->FileObject,
                                           FCB,
                                           IrpContext->DeviceExt,
                                           SystemBuffer,
                                           &BufferLength);
            break;

        case 133:
            Status = VfatGetEaInformation(IrpContext->FileObject,
                                          FCB,
                                          IrpContext->DeviceExt,
                                          SystemBuffer,
                                          &BufferLength);
            break;

        case 135:
            Status = STATUS_NOT_IMPLEMENTED;
            break;

        default:
            Status = STATUS_INVALID_PARAMETER;
    }

    if (!BooleanFlagOn(FCB->Flags, FCB_IS_PAGE_FILE))
    {
        ExReleaseResourceLite(&FCB->MainResource);
    }

    if (NT_SUCCESS(Status) || Status == STATUS_BUFFER_OVERFLOW)
        IrpContext->Irp->IoStatus.Information =
            IrpContext->Stack->Parameters.QueryFile.Length - BufferLength;
    else
        IrpContext->Irp->IoStatus.Information = 0;

    return Status;
}
