
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_24__ ;
typedef struct TYPE_26__ TYPE_1__ ;


typedef int WCHAR ;
typedef scalar_t__ ULONG ;
struct TYPE_28__ {int FixedMedia; } ;
struct TYPE_33__ {int StorageDevice; TYPE_2__ FatInfo; } ;
struct TYPE_32__ {TYPE_1__* RelatedFileObject; } ;
struct TYPE_29__ {int Length; int* Buffer; } ;
struct TYPE_31__ {scalar_t__ Flags; int PathNameU; TYPE_4__* CloseContext; TYPE_3__ LongNameU; } ;
struct TYPE_30__ {int CloseListEntry; } ;
struct TYPE_27__ {int CloseContextLookasideList; int CloseMutex; int CloseCount; } ;
struct TYPE_26__ {TYPE_5__* FsContext; int FileName; } ;
typedef TYPE_4__* PVFAT_CLOSE_CONTEXT ;
typedef TYPE_5__* PVFATFCB ;
typedef int PUNICODE_STRING ;
typedef TYPE_6__* PFILE_OBJECT ;
typedef TYPE_7__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 scalar_t__ BooleanFlagOn (scalar_t__,scalar_t__) ;
 int ClearFlag (scalar_t__,scalar_t__) ;
 int DPRINT (char*,...) ;
 int ExAcquireFastMutex (int *) ;
 int ExFreeToPagedLookasideList (int *,TYPE_4__*) ;
 int ExReleaseFastMutex (int *) ;
 int FALSE ;
 scalar_t__ FCB_DELAYED_CLOSE ;
 scalar_t__ FCB_DELETE_PENDING ;
 scalar_t__ FILE_DELETE_ON_CLOSE ;
 scalar_t__ FILE_DIRECTORY_FILE ;
 scalar_t__ FILE_OVERWRITE ;
 scalar_t__ FILE_OVERWRITE_IF ;
 scalar_t__ FILE_SUPERSEDE ;
 int IOCTL_DISK_CHECK_VERIFY ;
 int IsListEmpty (int *) ;
 int NT_SUCCESS (int ) ;
 int RemoveEntryList (int *) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_CANNOT_DELETE ;
 int STATUS_DELETE_PENDING ;
 int STATUS_OBJECT_NAME_COLLISION ;
 int TRUE ;
 int VfatBlockDeviceIoControl (int ,int ,int *,int ,int *,int ,int ) ;
 TYPE_24__* VfatGlobalData ;
 int vfatAttachFCBToFileObject (TYPE_7__*,TYPE_5__*,TYPE_6__*) ;
 scalar_t__ vfatFCBIsDirectory (TYPE_5__*) ;
 scalar_t__ vfatFCBIsReadOnly (TYPE_5__*) ;
 scalar_t__ vfatFCBIsRoot (TYPE_5__*) ;
 int vfatGetFCBForFile (TYPE_7__*,TYPE_5__**,TYPE_5__**,int ) ;
 int vfatGrabFCB (TYPE_7__*,TYPE_5__*) ;
 int vfatReleaseFCB (TYPE_7__*,TYPE_5__*) ;

__attribute__((used)) static
NTSTATUS
VfatOpenFile(
    PDEVICE_EXTENSION DeviceExt,
    PUNICODE_STRING PathNameU,
    PFILE_OBJECT FileObject,
    ULONG RequestedDisposition,
    ULONG RequestedOptions,
    PVFATFCB *ParentFcb)
{
    PVFATFCB Fcb;
    NTSTATUS Status;

    DPRINT("VfatOpenFile(%p, '%wZ', %p, %p)\n", DeviceExt, PathNameU, FileObject, ParentFcb);

    if (FileObject->RelatedFileObject)
    {
        DPRINT("'%wZ'\n", &FileObject->RelatedFileObject->FileName);

        *ParentFcb = FileObject->RelatedFileObject->FsContext;
    }
    else
    {
        *ParentFcb = ((void*)0);
    }

    if (!DeviceExt->FatInfo.FixedMedia)
    {
        Status = VfatBlockDeviceIoControl(DeviceExt->StorageDevice,
                                          IOCTL_DISK_CHECK_VERIFY,
                                          ((void*)0),
                                          0,
                                          ((void*)0),
                                          0,
                                          FALSE);
        if (!NT_SUCCESS(Status))
        {
            DPRINT("Status %lx\n", Status);
            *ParentFcb = ((void*)0);
            return Status;
        }
    }

    if (*ParentFcb)
    {
        vfatGrabFCB(DeviceExt, *ParentFcb);
    }


    DPRINT("Checking for existing FCB in memory\n");

    Status = vfatGetFCBForFile(DeviceExt, ParentFcb, &Fcb, PathNameU);
    if (!NT_SUCCESS(Status))
    {
        DPRINT ("Could not make a new FCB, status: %x\n", Status);
        return Status;
    }


    if ((!BooleanFlagOn(RequestedOptions, FILE_DIRECTORY_FILE) && vfatFCBIsDirectory(Fcb)) &&
        (RequestedDisposition == FILE_OVERWRITE ||
         RequestedDisposition == FILE_OVERWRITE_IF ||
         RequestedDisposition == FILE_SUPERSEDE))
    {
        vfatReleaseFCB(DeviceExt, Fcb);
        return STATUS_OBJECT_NAME_COLLISION;
    }

    if (BooleanFlagOn(Fcb->Flags, FCB_DELETE_PENDING))
    {
        vfatReleaseFCB(DeviceExt, Fcb);
        return STATUS_DELETE_PENDING;
    }


    if (vfatFCBIsReadOnly(Fcb) &&
        (RequestedDisposition == FILE_OVERWRITE ||
         RequestedDisposition == FILE_OVERWRITE_IF))
    {
        vfatReleaseFCB(DeviceExt, Fcb);
        return STATUS_ACCESS_DENIED;
    }

    if (vfatFCBIsReadOnly(Fcb) &&
        (RequestedOptions & FILE_DELETE_ON_CLOSE))
    {
        vfatReleaseFCB(DeviceExt, Fcb);
        return STATUS_CANNOT_DELETE;
    }

    if ((vfatFCBIsRoot(Fcb) ||
         (Fcb->LongNameU.Length == sizeof(WCHAR) && Fcb->LongNameU.Buffer[0] == L'.') ||
         (Fcb->LongNameU.Length == 2 * sizeof(WCHAR) && Fcb->LongNameU.Buffer[0] == L'.' && Fcb->LongNameU.Buffer[1] == L'.')) &&
        BooleanFlagOn(RequestedOptions, FILE_DELETE_ON_CLOSE))
    {

        vfatReleaseFCB(DeviceExt, Fcb);
        return STATUS_CANNOT_DELETE;
    }


    if (BooleanFlagOn(Fcb->Flags, FCB_DELAYED_CLOSE))
    {
        BOOLEAN ConcurrentDeletion;
        PVFAT_CLOSE_CONTEXT CloseContext;


        CloseContext = Fcb->CloseContext;

        if (CloseContext != ((void*)0))
        {
            ConcurrentDeletion = FALSE;

            ExAcquireFastMutex(&VfatGlobalData->CloseMutex);

            if (!IsListEmpty(&CloseContext->CloseListEntry))
            {
                RemoveEntryList(&CloseContext->CloseListEntry);
                --VfatGlobalData->CloseCount;
                ConcurrentDeletion = TRUE;
            }
            ExReleaseFastMutex(&VfatGlobalData->CloseMutex);


            ClearFlag(Fcb->Flags, FCB_DELAYED_CLOSE);

            vfatReleaseFCB(DeviceExt, Fcb);
            Fcb->CloseContext = ((void*)0);

            if (!ConcurrentDeletion)
            {
                ExFreeToPagedLookasideList(&VfatGlobalData->CloseContextLookasideList, CloseContext);
            }
        }

        DPRINT("Reusing delayed close FCB for %wZ\n", &Fcb->PathNameU);
    }

    DPRINT("Attaching FCB to fileObject\n");
    Status = vfatAttachFCBToFileObject(DeviceExt, Fcb, FileObject);
    if (!NT_SUCCESS(Status))
    {
        vfatReleaseFCB(DeviceExt, Fcb);
    }
    return Status;
}
