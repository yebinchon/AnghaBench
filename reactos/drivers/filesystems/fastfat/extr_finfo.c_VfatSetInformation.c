
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_9__ ;
typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


struct TYPE_33__ {int MainResource; int Flags; } ;
struct TYPE_32__ {TYPE_7__* Irp; TYPE_5__* DeviceObject; TYPE_4__* Stack; int DeviceExt; TYPE_11__* FileObject; int Flags; } ;
struct TYPE_30__ {scalar_t__ Information; } ;
struct TYPE_25__ {scalar_t__ SystemBuffer; } ;
struct TYPE_31__ {TYPE_6__ IoStatus; TYPE_1__ AssociatedIrp; } ;
struct TYPE_29__ {scalar_t__ DeviceExtension; } ;
struct TYPE_26__ {int FileInformationClass; int FileObject; } ;
struct TYPE_27__ {TYPE_2__ SetFile; } ;
struct TYPE_28__ {TYPE_3__ Parameters; } ;
struct TYPE_24__ {int SectionObjectPointer; scalar_t__ FsContext; } ;
struct TYPE_23__ {int DirResource; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_8__* PVFAT_IRP_CONTEXT ;
typedef TYPE_9__* PVFATFCB ;
typedef int PLARGE_INTEGER ;
typedef TYPE_10__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FILE_INFORMATION_CLASS ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (TYPE_8__*) ;
 int BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 scalar_t__ FALSE ;
 int FCB_IS_PAGE_FILE ;




 char** FileInformationClassNames ;
 int FileMaximumInformation ;


 int IRPCONTEXT_CANWAIT ;
 int MmCanFileBeTruncated (int ,int ) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NOT_SUPPORTED ;
 int STATUS_SUCCESS ;
 int STATUS_USER_MAPPED_FILE ;
 scalar_t__ TRUE ;
 int VfatMarkIrpContextForQueue (TYPE_8__*) ;
 int VfatSetAllocationSizeInformation (TYPE_11__*,TYPE_9__*,int ,int ) ;
 int VfatSetBasicInformation (TYPE_11__*,TYPE_9__*,int ,scalar_t__) ;
 int VfatSetDispositionInformation (TYPE_11__*,TYPE_9__*,int ,scalar_t__) ;
 int VfatSetPositionInformation (TYPE_11__*,scalar_t__) ;
 int VfatSetRenameInformation (TYPE_11__*,TYPE_9__*,int ,scalar_t__,int ) ;

NTSTATUS
VfatSetInformation(
    PVFAT_IRP_CONTEXT IrpContext)
{
    FILE_INFORMATION_CLASS FileInformationClass;
    PVFATFCB FCB;
    NTSTATUS Status = STATUS_SUCCESS;
    PVOID SystemBuffer;
    BOOLEAN LockDir;


    ASSERT(IrpContext);

    DPRINT("VfatSetInformation(IrpContext %p)\n", IrpContext);


    FileInformationClass =
        IrpContext->Stack->Parameters.SetFile.FileInformationClass;
    FCB = (PVFATFCB) IrpContext->FileObject->FsContext;
    SystemBuffer = IrpContext->Irp->AssociatedIrp.SystemBuffer;

    DPRINT("VfatSetInformation is called for '%s'\n",
           FileInformationClass >= FileMaximumInformation - 1 ? "????" : FileInformationClassNames[ FileInformationClass]);

    DPRINT("FileInformationClass %d\n", FileInformationClass);
    DPRINT("SystemBuffer %p\n", SystemBuffer);

    if (FCB == ((void*)0))
    {
        DPRINT1("IRP_MJ_SET_INFORMATION without FCB!\n");
        IrpContext->Irp->IoStatus.Information = 0;
        return STATUS_INVALID_PARAMETER;
    }




    if (FileInformationClass == 130)
    {
        DPRINT("Check for the ability to set file size\n");
        if (!MmCanFileBeTruncated(IrpContext->FileObject->SectionObjectPointer,
                                  (PLARGE_INTEGER)SystemBuffer))
        {
            DPRINT("Couldn't set file size!\n");
            IrpContext->Irp->IoStatus.Information = 0;
            return STATUS_USER_MAPPED_FILE;
        }
        DPRINT("Can set file size\n");
    }

    LockDir = FALSE;
    if (FileInformationClass == 128 || FileInformationClass == 133 ||
        FileInformationClass == 130 || FileInformationClass == 132)
    {
        LockDir = TRUE;
    }

    if (LockDir)
    {
        if (!ExAcquireResourceExclusiveLite(&((PDEVICE_EXTENSION)IrpContext->DeviceObject->DeviceExtension)->DirResource,
                                            BooleanFlagOn(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
        {
            return VfatMarkIrpContextForQueue(IrpContext);
        }
    }

    if (!BooleanFlagOn(FCB->Flags, FCB_IS_PAGE_FILE))
    {
        if (!ExAcquireResourceExclusiveLite(&FCB->MainResource,
                                            BooleanFlagOn(IrpContext->Flags, IRPCONTEXT_CANWAIT)))
        {
            if (LockDir)
            {
                ExReleaseResourceLite(&((PDEVICE_EXTENSION)IrpContext->DeviceObject->DeviceExtension)->DirResource);
            }

            return VfatMarkIrpContextForQueue(IrpContext);
        }
    }

    switch (FileInformationClass)
    {
        case 129:
            Status = VfatSetPositionInformation(IrpContext->FileObject,
                                                SystemBuffer);
            break;

        case 131:
            Status = VfatSetDispositionInformation(IrpContext->FileObject,
                                                   FCB,
                                                   IrpContext->DeviceExt,
                                                   SystemBuffer);
            break;

        case 133:
        case 130:
            Status = VfatSetAllocationSizeInformation(IrpContext->FileObject,
                                                      FCB,
                                                      IrpContext->DeviceExt,
                                                      (PLARGE_INTEGER)SystemBuffer);
            break;

        case 132:
            Status = VfatSetBasicInformation(IrpContext->FileObject,
                                             FCB,
                                             IrpContext->DeviceExt,
                                             SystemBuffer);
            break;

        case 128:
            Status = VfatSetRenameInformation(IrpContext->FileObject,
                                              FCB,
                                              IrpContext->DeviceExt,
                                              SystemBuffer,
                                              IrpContext->Stack->Parameters.SetFile.FileObject);
            break;

        default:
            Status = STATUS_NOT_SUPPORTED;
    }

    if (!BooleanFlagOn(FCB->Flags, FCB_IS_PAGE_FILE))
    {
        ExReleaseResourceLite(&FCB->MainResource);
    }

    if (LockDir)
    {
        ExReleaseResourceLite(&((PDEVICE_EXTENSION)IrpContext->DeviceObject->DeviceExtension)->DirResource);
    }

    IrpContext->Irp->IoStatus.Information = 0;
    return Status;
}
