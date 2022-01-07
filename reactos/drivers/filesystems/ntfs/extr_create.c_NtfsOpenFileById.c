
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UNICODE_STRING ;
typedef int ULONGLONG ;
struct TYPE_14__ {int FileRecLookasideList; } ;
struct TYPE_13__ {int Flags; } ;
typedef int * PNTFS_FCB ;
typedef TYPE_1__* PFILE_RECORD_HEADER ;
typedef int PFILE_OBJECT ;
typedef TYPE_2__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 int DPRINT (char*,TYPE_2__*,int ,int,int **) ;
 TYPE_1__* ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_1__*) ;
 int FRH_IN_USE ;
 int * MftIdToName ;
 int NTFS_FILE_FIRST_USER_FILE ;
 int NT_SUCCESS (int ) ;
 int NtfsAttachFCBToFileObject (TYPE_2__*,int *,int ) ;
 int * NtfsGrabFCBFromTable (TYPE_2__*,int ) ;
 int NtfsMakeFCBFromDirEntry (TYPE_2__*,int *,int *,int *,TYPE_1__*,int,int **) ;
 int ReadFileRecord (TYPE_2__*,int,TYPE_1__*) ;
 int RtlInitUnicodeString (int *,int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_OBJECT_NAME_NOT_FOUND ;
 int STATUS_OBJECT_PATH_NOT_FOUND ;

__attribute__((used)) static
NTSTATUS
NtfsOpenFileById(PDEVICE_EXTENSION DeviceExt,
                 PFILE_OBJECT FileObject,
                 ULONGLONG MftId,
                 PNTFS_FCB * FoundFCB)
{
    NTSTATUS Status;
    PNTFS_FCB FCB;
    PFILE_RECORD_HEADER MftRecord;

    DPRINT("NtfsOpenFileById(%p, %p, %I64x, %p)\n", DeviceExt, FileObject, MftId, FoundFCB);

    ASSERT(MftId < NTFS_FILE_FIRST_USER_FILE);
    if (MftId > 0xb)
    {
        return STATUS_OBJECT_NAME_NOT_FOUND;
    }

    MftRecord = ExAllocateFromNPagedLookasideList(&DeviceExt->FileRecLookasideList);
    if (MftRecord == ((void*)0))
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = ReadFileRecord(DeviceExt, MftId, MftRecord);
    if (!NT_SUCCESS(Status))
    {
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, MftRecord);
        return Status;
    }

    if (!(MftRecord->Flags & FRH_IN_USE))
    {
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, MftRecord);
        return STATUS_OBJECT_PATH_NOT_FOUND;
    }

    FCB = NtfsGrabFCBFromTable(DeviceExt, MftIdToName[MftId]);
    if (FCB == ((void*)0))
    {
        UNICODE_STRING Name;

        RtlInitUnicodeString(&Name, MftIdToName[MftId]);
        Status = NtfsMakeFCBFromDirEntry(DeviceExt, ((void*)0), &Name, ((void*)0), MftRecord, MftId, &FCB);
        if (!NT_SUCCESS(Status))
        {
            ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, MftRecord);
            return Status;
        }
    }

    ASSERT(FCB != ((void*)0));

    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, MftRecord);

    Status = NtfsAttachFCBToFileObject(DeviceExt,
                                       FCB,
                                       FileObject);
    *FoundFCB = FCB;

    return Status;
}
