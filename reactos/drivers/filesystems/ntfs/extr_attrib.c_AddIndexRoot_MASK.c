#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int USHORT ;
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_18__ {int /*<<< orphan*/  Reserved; } ;
struct TYPE_17__ {scalar_t__ BytesInUse; int /*<<< orphan*/  NextAttributeNumber; } ;
struct TYPE_14__ {scalar_t__ ValueOffset; scalar_t__ ValueLength; } ;
struct TYPE_16__ {scalar_t__ Length; scalar_t__ Type; int NameLength; TYPE_2__ Resident; scalar_t__ Instance; scalar_t__ NameOffset; } ;
struct TYPE_13__ {scalar_t__ BytesPerFileRecord; } ;
struct TYPE_15__ {TYPE_1__ NtfsInfo; } ;
typedef  TYPE_3__* PNTFS_VCB ;
typedef  TYPE_4__* PNTFS_ATTR_RECORD ;
typedef  int /*<<< orphan*/  PINDEX_ROOT_ATTRIBUTE ;
typedef  TYPE_5__* PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  PCWSTR ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ATTR_RECORD_ALIGNMENT ; 
 scalar_t__ AttributeEnd ; 
 scalar_t__ AttributeIndexRoot ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTFS_ATTR_RECORD ; 
 TYPE_9__ Resident ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  VALUE_OFFSET_ALIGNMENT ; 

NTSTATUS
FUNC6(PNTFS_VCB Vcb,
             PFILE_RECORD_HEADER FileRecord,
             PNTFS_ATTR_RECORD AttributeAddress,
             PINDEX_ROOT_ATTRIBUTE NewIndexRoot,
             ULONG RootLength,
             PCWSTR Name,
             USHORT NameLength)
{
    ULONG AttributeLength;
    // Calculate the header length
    ULONG ResidentHeaderLength = FUNC2(NTFS_ATTR_RECORD, Resident.Reserved) + sizeof(UCHAR);
    // Back up the file record's final ULONG (even though it doesn't matter)
    ULONG FileRecordEnd = AttributeAddress->Length;
    ULONG NameOffset;
    ULONG ValueOffset;
    ULONG BytesAvailable;

    if (AttributeAddress->Type != AttributeEnd)
    {
        FUNC1("FIXME: Can only add $DATA attribute to the end of a file record.\n");
        return STATUS_NOT_IMPLEMENTED;
    }

    NameOffset = ResidentHeaderLength;

    // Calculate ValueOffset, which will be aligned to a 4-byte boundary
    ValueOffset = FUNC0(NameOffset + (sizeof(WCHAR) * NameLength), VALUE_OFFSET_ALIGNMENT);

    // Calculate length of attribute
    AttributeLength = ValueOffset + RootLength;
    AttributeLength = FUNC0(AttributeLength, ATTR_RECORD_ALIGNMENT);

    // Make sure the file record is large enough for the new attribute
    BytesAvailable = Vcb->NtfsInfo.BytesPerFileRecord - FileRecord->BytesInUse;
    if (BytesAvailable < AttributeLength)
    {
        FUNC1("FIXME: Not enough room in file record for index allocation attribute!\n");
        return STATUS_NOT_IMPLEMENTED;
    }

    // Set Attribute fields
    FUNC4(AttributeAddress, AttributeLength);

    AttributeAddress->Type = AttributeIndexRoot;
    AttributeAddress->Length = AttributeLength;
    AttributeAddress->NameLength = NameLength;
    AttributeAddress->NameOffset = NameOffset;
    AttributeAddress->Instance = FileRecord->NextAttributeNumber++;

    AttributeAddress->Resident.ValueLength = RootLength;
    AttributeAddress->Resident.ValueOffset = ValueOffset;

    // Set the name
    FUNC3((PCHAR)((ULONG_PTR)AttributeAddress + NameOffset), Name, NameLength * sizeof(WCHAR));

    // Copy the index root attribute
    FUNC3((PCHAR)((ULONG_PTR)AttributeAddress + ValueOffset), NewIndexRoot, RootLength);

    // move the attribute-end and file-record-end markers to the end of the file record
    AttributeAddress = (PNTFS_ATTR_RECORD)((ULONG_PTR)AttributeAddress + AttributeAddress->Length);
    FUNC5(FileRecord, AttributeAddress, FileRecordEnd);

    return STATUS_SUCCESS;
}