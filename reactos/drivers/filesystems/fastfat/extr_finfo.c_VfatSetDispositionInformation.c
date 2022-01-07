
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_16__ {scalar_t__ BytesPerCluster; } ;
struct TYPE_21__ {TYPE_1__ FatInfo; } ;
struct TYPE_20__ {int DeleteFile; } ;
struct TYPE_19__ {void* DeletePending; int SectionObjectPointer; } ;
struct TYPE_17__ {int Length; int* Buffer; } ;
struct TYPE_18__ {int Flags; TYPE_2__ LongNameU; int PathNameU; } ;
typedef TYPE_3__* PVFATFCB ;
typedef TYPE_4__* PFILE_OBJECT ;
typedef TYPE_5__* PFILE_DISPOSITION_INFORMATION ;
typedef TYPE_6__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 scalar_t__ BooleanFlagOn (int ,int ) ;
 int DPRINT (char*,...) ;
 void* FALSE ;
 int FCB_DELETE_PENDING ;
 int MmFlushForDelete ;
 int MmFlushImageSection (int ,int ) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_CANNOT_DELETE ;
 int STATUS_DIRECTORY_NOT_EMPTY ;
 int STATUS_SUCCESS ;
 void* TRUE ;
 int VfatIsDirectoryEmpty (TYPE_6__*,TYPE_3__*) ;
 scalar_t__ vfatFCBIsDirectory (TYPE_3__*) ;
 scalar_t__ vfatFCBIsReadOnly (TYPE_3__*) ;
 scalar_t__ vfatFCBIsRoot (TYPE_3__*) ;

__attribute__((used)) static
NTSTATUS
VfatSetDispositionInformation(
    PFILE_OBJECT FileObject,
    PVFATFCB FCB,
    PDEVICE_EXTENSION DeviceExt,
    PFILE_DISPOSITION_INFORMATION DispositionInfo)
{
    DPRINT("FsdSetDispositionInformation(<%wZ>, Delete %u)\n", &FCB->PathNameU, DispositionInfo->DeleteFile);

    ASSERT(DeviceExt != ((void*)0));
    ASSERT(DeviceExt->FatInfo.BytesPerCluster != 0);
    ASSERT(FCB != ((void*)0));

    if (!DispositionInfo->DeleteFile)
    {

        FCB->Flags &= ~FCB_DELETE_PENDING;
        FileObject->DeletePending = FALSE;
        return STATUS_SUCCESS;
    }

    if (BooleanFlagOn(FCB->Flags, FCB_DELETE_PENDING))
    {

        FileObject->DeletePending = TRUE;
        return STATUS_SUCCESS;
    }

    if (vfatFCBIsReadOnly(FCB))
    {
        return STATUS_CANNOT_DELETE;
    }

    if (vfatFCBIsRoot(FCB) ||
        (FCB->LongNameU.Length == sizeof(WCHAR) && FCB->LongNameU.Buffer[0] == L'.') ||
        (FCB->LongNameU.Length == 2 * sizeof(WCHAR) && FCB->LongNameU.Buffer[0] == L'.' && FCB->LongNameU.Buffer[1] == L'.'))
    {

        return STATUS_ACCESS_DENIED;
    }

    if (!MmFlushImageSection (FileObject->SectionObjectPointer, MmFlushForDelete))
    {


        DPRINT("MmFlushImageSection returned FALSE\n");
        return STATUS_CANNOT_DELETE;
    }

    if (vfatFCBIsDirectory(FCB) && !VfatIsDirectoryEmpty(DeviceExt, FCB))
    {


        return STATUS_DIRECTORY_NOT_EMPTY;
    }


    FCB->Flags |= FCB_DELETE_PENDING;
    FileObject->DeletePending = TRUE;

    return STATUS_SUCCESS;
}
