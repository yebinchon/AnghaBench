
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef int WCHAR ;
typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_21__ {int FileRecLookasideList; } ;
struct TYPE_20__ {int NameLength; int* Name; int DirectoryFileReferenceNumber; } ;
struct TYPE_17__ {scalar_t__ Type; } ;
struct TYPE_19__ {int Flags; TYPE_1__ Ntfs; } ;
struct TYPE_18__ {int Length; int MaximumLength; int* Buffer; } ;
typedef TYPE_2__* PUNICODE_STRING ;
typedef TYPE_3__* PFILE_RECORD_HEADER ;
typedef TYPE_4__* PFILENAME_ATTRIBUTE ;
typedef TYPE_5__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int FullPath ;


 int ASSERT (int) ;
 int DPRINT (char*,TYPE_5__*,int,TYPE_2__*) ;
 int DPRINT1 (char*,int) ;
 TYPE_3__* ExAllocateFromNPagedLookasideList (int *) ;
 int* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_3__*) ;
 int FRH_IN_USE ;
 TYPE_4__* GetBestFileNameFromRecord (TYPE_5__*,TYPE_3__*) ;
 int MAX_PATH ;
 scalar_t__ NRH_FILE_TYPE ;
 int NTFS_FILE_ROOT ;
 int NTFS_MFT_MASK ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int ReadFileRecord (TYPE_5__*,int,TYPE_3__*) ;
 int RtlCopyMemory (int*,int*,int) ;
 int RtlZeroMemory (int*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_OBJECT_PATH_NOT_FOUND ;
 int TAG_NTFS ;
 scalar_t__ TRUE ;

__attribute__((used)) static
NTSTATUS
NtfsMoonWalkID(PDEVICE_EXTENSION DeviceExt,
               ULONGLONG Id,
               PUNICODE_STRING OutPath)
{
    NTSTATUS Status;
    PFILE_RECORD_HEADER MftRecord;
    PFILENAME_ATTRIBUTE FileName;
    WCHAR FullPath[MAX_PATH];
    ULONG WritePosition = MAX_PATH - 1;

    DPRINT("NtfsMoonWalkID(%p, %I64x, %p)\n", DeviceExt, Id, OutPath);

    RtlZeroMemory(FullPath, sizeof(FullPath));
    MftRecord = ExAllocateFromNPagedLookasideList(&DeviceExt->FileRecLookasideList);
    if (MftRecord == ((void*)0))
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    while (TRUE)
    {
        Status = ReadFileRecord(DeviceExt, Id, MftRecord);
        if (!NT_SUCCESS(Status))
            break;

        ASSERT(MftRecord->Ntfs.Type == NRH_FILE_TYPE);
        if (!(MftRecord->Flags & FRH_IN_USE))
        {
            Status = STATUS_OBJECT_PATH_NOT_FOUND;
            break;
        }

        FileName = GetBestFileNameFromRecord(DeviceExt, MftRecord);
        if (FileName == ((void*)0))
        {
            DPRINT1("$FILE_NAME attribute not found for %I64x\n", Id);
            Status = STATUS_OBJECT_PATH_NOT_FOUND;
            break;
        }

        WritePosition -= FileName->NameLength;
        ASSERT(WritePosition < MAX_PATH);
        RtlCopyMemory(FullPath + WritePosition, FileName->Name, FileName->NameLength * sizeof(WCHAR));
        WritePosition -= 1;
        ASSERT(WritePosition < MAX_PATH);
        FullPath[WritePosition] = L'\\';

        Id = FileName->DirectoryFileReferenceNumber & NTFS_MFT_MASK;
        if (Id == NTFS_FILE_ROOT)
            break;
    }

    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, MftRecord);

    if (!NT_SUCCESS(Status))
        return Status;

    OutPath->Length = (MAX_PATH - WritePosition - 1) * sizeof(WCHAR);
    OutPath->MaximumLength = (MAX_PATH - WritePosition) * sizeof(WCHAR);
    OutPath->Buffer = ExAllocatePoolWithTag(NonPagedPool, OutPath->MaximumLength, TAG_NTFS);
    if (OutPath->Buffer == ((void*)0))
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    RtlCopyMemory(OutPath->Buffer, FullPath + WritePosition, OutPath->MaximumLength);

    return Status;
}
