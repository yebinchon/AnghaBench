#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_3__ ;
typedef  struct TYPE_18__   TYPE_2__ ;
typedef  struct TYPE_17__   TYPE_1__ ;

/* Type definitions */
typedef  int WCHAR ;
typedef  int ULONGLONG ;
typedef  int ULONG ;
struct TYPE_21__ {int /*<<< orphan*/  FileRecLookasideList; } ;
struct TYPE_20__ {int NameLength; int* Name; int DirectoryFileReferenceNumber; } ;
struct TYPE_17__ {scalar_t__ Type; } ;
struct TYPE_19__ {int Flags; TYPE_1__ Ntfs; } ;
struct TYPE_18__ {int Length; int MaximumLength; int* Buffer; } ;
typedef  TYPE_2__* PUNICODE_STRING ;
typedef  TYPE_3__* PFILE_RECORD_HEADER ;
typedef  TYPE_4__* PFILENAME_ATTRIBUTE ;
typedef  TYPE_5__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  FullPath ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ *) ; 
 int* FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int FRH_IN_USE ; 
 TYPE_4__* FUNC6 (TYPE_5__*,TYPE_3__*) ; 
 int MAX_PATH ; 
 scalar_t__ NRH_FILE_TYPE ; 
 int NTFS_FILE_ROOT ; 
 int NTFS_MFT_MASK ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC10 (int*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_OBJECT_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static
NTSTATUS
FUNC11(PDEVICE_EXTENSION DeviceExt,
               ULONGLONG Id,
               PUNICODE_STRING OutPath)
{
    NTSTATUS Status;
    PFILE_RECORD_HEADER MftRecord;
    PFILENAME_ATTRIBUTE FileName;
    WCHAR FullPath[MAX_PATH];
    ULONG WritePosition = MAX_PATH - 1;

    FUNC1("NtfsMoonWalkID(%p, %I64x, %p)\n", DeviceExt, Id, OutPath);

    FUNC10(FullPath, sizeof(FullPath));
    MftRecord = FUNC3(&DeviceExt->FileRecLookasideList);
    if (MftRecord == NULL)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    while (TRUE)
    {
        Status = FUNC8(DeviceExt, Id, MftRecord);
        if (!FUNC7(Status))
            break;

        FUNC0(MftRecord->Ntfs.Type == NRH_FILE_TYPE);
        if (!(MftRecord->Flags & FRH_IN_USE))
        {
            Status = STATUS_OBJECT_PATH_NOT_FOUND;
            break;
        }

        FileName = FUNC6(DeviceExt, MftRecord);
        if (FileName == NULL)
        {
            FUNC2("$FILE_NAME attribute not found for %I64x\n", Id);
            Status = STATUS_OBJECT_PATH_NOT_FOUND;
            break;
        }

        WritePosition -= FileName->NameLength;
        FUNC0(WritePosition < MAX_PATH);
        FUNC9(FullPath + WritePosition, FileName->Name, FileName->NameLength * sizeof(WCHAR));
        WritePosition -= 1;
        FUNC0(WritePosition < MAX_PATH);
        FullPath[WritePosition] = L'\\';

        Id = FileName->DirectoryFileReferenceNumber & NTFS_MFT_MASK;
        if (Id == NTFS_FILE_ROOT)
            break;
    }

    FUNC5(&DeviceExt->FileRecLookasideList, MftRecord);

    if (!FUNC7(Status))
        return Status;

    OutPath->Length = (MAX_PATH - WritePosition - 1) * sizeof(WCHAR);
    OutPath->MaximumLength = (MAX_PATH - WritePosition) * sizeof(WCHAR);
    OutPath->Buffer = FUNC4(NonPagedPool, OutPath->MaximumLength, TAG_NTFS);
    if (OutPath->Buffer == NULL)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    FUNC9(OutPath->Buffer, FullPath + WritePosition, OutPath->MaximumLength);

    return Status;
}