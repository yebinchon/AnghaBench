
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_27__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_37__ {int Flags; int OpenHandleCount; int NotifyList; int NotifySync; } ;
struct TYPE_36__ {int Flags; TYPE_4__* SectionObjectPointer; TYPE_7__* FsContext2; scalar_t__ FsContext; } ;
struct TYPE_35__ {int Flags; } ;
struct TYPE_29__ {scalar_t__ QuadPart; } ;
struct TYPE_30__ {scalar_t__ QuadPart; } ;
struct TYPE_28__ {scalar_t__ QuadPart; } ;
struct TYPE_31__ {TYPE_27__ FileSize; TYPE_2__ AllocationSize; TYPE_1__ ValidDataLength; } ;
struct TYPE_34__ {scalar_t__ OpenHandleCount; int MainResource; int PagingIoResource; int Flags; int PathNameU; int ParentListHead; int FCBShareAccess; TYPE_3__ RFCB; TYPE_8__* FileObject; int FileLock; } ;
struct TYPE_33__ {int Irp; TYPE_9__* DeviceExt; TYPE_8__* FileObject; } ;
struct TYPE_32__ {int * ImageSectionObject; int * DataSectionObject; } ;
typedef TYPE_5__* PVFAT_IRP_CONTEXT ;
typedef TYPE_6__* PVFATFCB ;
typedef TYPE_7__* PVFATCCB ;
typedef TYPE_8__* PFILE_OBJECT ;
typedef TYPE_9__* PDEVICE_EXTENSION ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ BooleanFlagOn (int ,int ) ;
 int CCB_DELETE_ON_CLOSE ;
 int CcUninitializeCacheMap (TYPE_8__*,TYPE_27__*,int *) ;
 int ClearFlag (int ,int ) ;
 int DPRINT (char*,TYPE_9__*,...) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 scalar_t__ FALSE ;
 int FCB_CACHE_INITIALIZED ;
 int FCB_CLEANED_UP ;
 int FCB_DELAYED_CLOSE ;
 int FCB_DELETE_PENDING ;
 int FCB_IS_DIRTY ;
 int FCB_IS_FAT ;
 int FCB_IS_PAGE_FILE ;
 int FCB_IS_VOLUME ;
 int FILE_ACTION_REMOVED ;
 int FILE_NOTIFY_CHANGE_DIR_NAME ;
 int FILE_NOTIFY_CHANGE_FILE_NAME ;
 int FO_CLEANUP_COMPLETE ;
 scalar_t__ FsRtlAreThereCurrentFileLocks (int *) ;
 int FsRtlFastUnlockAll (int *,TYPE_8__*,int ,int *) ;
 int FsRtlNotifyCleanup (int ,int *,TYPE_7__*) ;
 int IoGetRequestorProcess (int ) ;
 int IoRemoveShareAccess (TYPE_8__*,int *) ;
 scalar_t__ IsListEmpty (int *) ;
 int ObDereferenceObject (TYPE_8__*) ;
 int SetFlag (int ,int ) ;
 int TRUE ;
 int VCB_DISMOUNT_PENDING ;
 scalar_t__ VfatCheckForDismount (TYPE_9__*,int ) ;
 int VfatDelEntry (TYPE_9__*,TYPE_6__*,int *) ;
 int VfatIsDirectoryEmpty (TYPE_9__*,TYPE_6__*) ;
 int VfatUpdateEntry (TYPE_9__*,TYPE_6__*) ;
 scalar_t__ vfatFCBIsDirectory (TYPE_6__*) ;
 int vfatReportChange (TYPE_9__*,TYPE_6__*,int ,int ) ;

__attribute__((used)) static
BOOLEAN
VfatCleanupFile(
    PVFAT_IRP_CONTEXT IrpContext)
{
    PVFATFCB pFcb;
    PVFATCCB pCcb;
    BOOLEAN IsVolume;
    PDEVICE_EXTENSION DeviceExt = IrpContext->DeviceExt;
    PFILE_OBJECT FileObject = IrpContext->FileObject;
    BOOLEAN Deleted = FALSE;

    DPRINT("VfatCleanupFile(DeviceExt %p, FileObject %p)\n",
           IrpContext->DeviceExt, FileObject);


    pFcb = (PVFATFCB)FileObject->FsContext;
    if (!pFcb)
        return FALSE;

    IsVolume = BooleanFlagOn(pFcb->Flags, FCB_IS_VOLUME);
    if (IsVolume)
    {
        pFcb->OpenHandleCount--;
        DeviceExt->OpenHandleCount--;

        if (pFcb->OpenHandleCount != 0)
        {
            IoRemoveShareAccess(FileObject, &pFcb->FCBShareAccess);
        }
    }
    else
    {
        ExAcquireResourceExclusiveLite(&pFcb->MainResource, TRUE);
        ExAcquireResourceExclusiveLite(&pFcb->PagingIoResource, TRUE);

        pCcb = FileObject->FsContext2;
        if (BooleanFlagOn(pCcb->Flags, CCB_DELETE_ON_CLOSE))
        {
            pFcb->Flags |= FCB_DELETE_PENDING;
        }


        FsRtlNotifyCleanup(IrpContext->DeviceExt->NotifySync,
                           &(IrpContext->DeviceExt->NotifyList),
                           FileObject->FsContext2);

        pFcb->OpenHandleCount--;
        DeviceExt->OpenHandleCount--;

        if (!vfatFCBIsDirectory(pFcb) &&
            FsRtlAreThereCurrentFileLocks(&pFcb->FileLock))
        {

            FsRtlFastUnlockAll(&pFcb->FileLock,
                               FileObject,
                               IoGetRequestorProcess(IrpContext->Irp),
                               ((void*)0));
        }

        if (BooleanFlagOn(pFcb->Flags, FCB_IS_DIRTY))
        {
            VfatUpdateEntry (DeviceExt, pFcb);
        }

        if (BooleanFlagOn(pFcb->Flags, FCB_DELETE_PENDING) &&
            pFcb->OpenHandleCount == 0)
        {
            if (vfatFCBIsDirectory(pFcb) &&
                !VfatIsDirectoryEmpty(DeviceExt, pFcb))
            {
                pFcb->Flags &= ~FCB_DELETE_PENDING;
            }
            else
            {
                PFILE_OBJECT tmpFileObject;
                tmpFileObject = pFcb->FileObject;
                if (tmpFileObject != ((void*)0))
                {
                    pFcb->FileObject = ((void*)0);
                    CcUninitializeCacheMap(tmpFileObject, ((void*)0), ((void*)0));
                    ClearFlag(pFcb->Flags, FCB_CACHE_INITIALIZED);
                    ObDereferenceObject(tmpFileObject);
                }

                pFcb->RFCB.ValidDataLength.QuadPart = 0;
                pFcb->RFCB.FileSize.QuadPart = 0;
                pFcb->RFCB.AllocationSize.QuadPart = 0;
            }
        }


        CcUninitializeCacheMap(FileObject, &pFcb->RFCB.FileSize, ((void*)0));

        if (BooleanFlagOn(pFcb->Flags, FCB_DELETE_PENDING) &&
            pFcb->OpenHandleCount == 0)
        {
            VfatDelEntry(DeviceExt, pFcb, ((void*)0));

            vfatReportChange(DeviceExt,
                             pFcb,
                             (vfatFCBIsDirectory(pFcb) ?
                              FILE_NOTIFY_CHANGE_DIR_NAME : FILE_NOTIFY_CHANGE_FILE_NAME),
                             FILE_ACTION_REMOVED);
        }

        if (pFcb->OpenHandleCount != 0)
        {
            IoRemoveShareAccess(FileObject, &pFcb->FCBShareAccess);
        }
        FileObject->Flags |= FO_CLEANUP_COMPLETE;




        ExReleaseResourceLite(&pFcb->PagingIoResource);
        ExReleaseResourceLite(&pFcb->MainResource);
    }
    return Deleted;
}
