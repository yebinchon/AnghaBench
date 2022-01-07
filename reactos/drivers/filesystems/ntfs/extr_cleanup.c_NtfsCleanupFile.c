
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int Flags; scalar_t__ FsContext; } ;
struct TYPE_7__ {int FileSize; } ;
struct TYPE_8__ {int Flags; scalar_t__ OpenHandleCount; int MainResource; TYPE_1__ RFCB; } ;
typedef TYPE_2__* PNTFS_FCB ;
typedef TYPE_3__* PFILE_OBJECT ;
typedef int PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int CcUninitializeCacheMap (TYPE_3__*,int *,int *) ;
 int DPRINT (char*,int ,TYPE_3__*,int ) ;
 int ExAcquireResourceExclusiveLite (int *,int ) ;
 int ExReleaseResourceLite (int *) ;
 int FCB_IS_VOLUME ;
 int FO_CLEANUP_COMPLETE ;
 int STATUS_PENDING ;
 int STATUS_SUCCESS ;

NTSTATUS
NtfsCleanupFile(PDEVICE_EXTENSION DeviceExt,
                PFILE_OBJECT FileObject,
                BOOLEAN CanWait)
{
    PNTFS_FCB Fcb;

    DPRINT("NtfsCleanupFile(DeviceExt %p, FileObject %p, CanWait %u)\n",
           DeviceExt,
           FileObject,
           CanWait);

    Fcb = (PNTFS_FCB)(FileObject->FsContext);
    if (!Fcb)
        return STATUS_SUCCESS;

    if (Fcb->Flags & FCB_IS_VOLUME)
    {
        Fcb->OpenHandleCount--;

        if (Fcb->OpenHandleCount != 0)
        {

        }
    }
    else
    {
        if (!ExAcquireResourceExclusiveLite(&Fcb->MainResource, CanWait))
        {
            return STATUS_PENDING;
        }

        Fcb->OpenHandleCount--;

        CcUninitializeCacheMap(FileObject, &Fcb->RFCB.FileSize, ((void*)0));

        if (Fcb->OpenHandleCount != 0)
        {

        }

        FileObject->Flags |= FO_CLEANUP_COMPLETE;

        ExReleaseResourceLite(&Fcb->MainResource);
    }

    return STATUS_SUCCESS;
}
