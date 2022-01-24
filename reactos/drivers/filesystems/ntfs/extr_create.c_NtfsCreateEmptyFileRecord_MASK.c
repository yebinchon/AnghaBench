#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_11__ {int BytesPerFileRecord; int BytesPerSector; } ;
struct TYPE_15__ {TYPE_1__ NtfsInfo; int /*<<< orphan*/  FileRecLookasideList; } ;
struct TYPE_12__ {int UsaCount; scalar_t__ UsaOffset; int /*<<< orphan*/  Type; } ;
struct TYPE_14__ {int BytesAllocated; int SequenceNumber; scalar_t__ AttributeOffset; scalar_t__ BytesInUse; int /*<<< orphan*/  Flags; TYPE_2__ Ntfs; } ;
struct TYPE_13__ {int /*<<< orphan*/  Length; int /*<<< orphan*/  Type; } ;
typedef  TYPE_3__* PNTFS_ATTR_RECORD ;
typedef  TYPE_4__* PFILE_RECORD_HEADER ;
typedef  TYPE_5__* PDEVICE_EXTENSION ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_RECORD_ALIGNMENT ; 
 int /*<<< orphan*/  AttributeEnd ; 
 int /*<<< orphan*/  FUNC1 (char*,TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_4__* FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_RECORD_END ; 
 int /*<<< orphan*/  FILE_RECORD_HEADER ; 
 int /*<<< orphan*/  FRH_IN_USE ; 
 int /*<<< orphan*/  MFTRecordNumber ; 
 int /*<<< orphan*/  NRH_FILE_TYPE ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__*,int) ; 

PFILE_RECORD_HEADER
FUNC6(PDEVICE_EXTENSION DeviceExt)
{
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_ATTR_RECORD NextAttribute;

    FUNC1("NtfsCreateEmptyFileRecord(%p)\n", DeviceExt);

    // allocate memory for file record
    FileRecord = FUNC3(&DeviceExt->FileRecLookasideList);
    if (!FileRecord)
    {
        FUNC2("ERROR: Unable to allocate memory for file record!\n");
        return NULL;
    }

    FUNC5(FileRecord, DeviceExt->NtfsInfo.BytesPerFileRecord);

    FileRecord->Ntfs.Type = NRH_FILE_TYPE;

    // calculate USA offset and count
    FileRecord->Ntfs.UsaOffset = FUNC4(FILE_RECORD_HEADER, MFTRecordNumber) + sizeof(ULONG);

    // size of USA (in ULONG's) will be 1 (for USA number) + 1 for every sector the file record uses
    FileRecord->BytesAllocated = DeviceExt->NtfsInfo.BytesPerFileRecord;
    FileRecord->Ntfs.UsaCount = (FileRecord->BytesAllocated / DeviceExt->NtfsInfo.BytesPerSector) + 1;

    // setup other file record fields
    FileRecord->SequenceNumber = 1;
    FileRecord->AttributeOffset = FileRecord->Ntfs.UsaOffset + (2 * FileRecord->Ntfs.UsaCount);
    FileRecord->AttributeOffset = FUNC0(FileRecord->AttributeOffset, ATTR_RECORD_ALIGNMENT);
    FileRecord->Flags = FRH_IN_USE;
    FileRecord->BytesInUse = FileRecord->AttributeOffset + sizeof(ULONG) * 2;

    // find where the first attribute will be added
    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + FileRecord->AttributeOffset);

    // mark the (temporary) end of the file-record
    NextAttribute->Type = AttributeEnd;
    NextAttribute->Length = FILE_RECORD_END;

    return FileRecord;
}