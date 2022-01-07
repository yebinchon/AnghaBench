
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {int OpenHandleCount; } ;
struct TYPE_9__ {scalar_t__ Buffer; } ;
struct TYPE_11__ {TYPE_1__ FileName; int * SectionObjectPointer; int * FsContext; int * FsContext2; } ;
struct TYPE_10__ {struct TYPE_10__* DirectorySearchPattern; } ;
typedef scalar_t__ PNTFS_FCB ;
typedef TYPE_2__* PNTFS_CCB ;
typedef TYPE_3__* PFILE_OBJECT ;
typedef TYPE_4__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int DPRINT (char*,...) ;
 int ExFreePool (TYPE_2__*) ;
 int NtfsReleaseFCB (TYPE_4__*,scalar_t__) ;
 int STATUS_SUCCESS ;

NTSTATUS
NtfsCloseFile(PDEVICE_EXTENSION DeviceExt,
              PFILE_OBJECT FileObject)
{
    PNTFS_CCB Ccb;
    PNTFS_FCB Fcb;

    DPRINT("NtfsCloseFile(DeviceExt %p, FileObject %p)\n",
           DeviceExt,
           FileObject);

    Ccb = (PNTFS_CCB)(FileObject->FsContext2);
    Fcb = (PNTFS_FCB)(FileObject->FsContext);

    DPRINT("Ccb %p\n", Ccb);
    if (Ccb == ((void*)0))
    {
        return STATUS_SUCCESS;
    }

    FileObject->FsContext2 = ((void*)0);
    FileObject->FsContext = ((void*)0);
    FileObject->SectionObjectPointer = ((void*)0);
    DeviceExt->OpenHandleCount--;

    if (FileObject->FileName.Buffer)
    {



        NtfsReleaseFCB(DeviceExt, Fcb);
    }

    if (Ccb->DirectorySearchPattern)
    {
        ExFreePool(Ccb->DirectorySearchPattern);
    }

    ExFreePool(Ccb);

    return STATUS_SUCCESS;
}
