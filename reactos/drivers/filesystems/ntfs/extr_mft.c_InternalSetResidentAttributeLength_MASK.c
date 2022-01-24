#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ ULONG ;
struct TYPE_14__ {scalar_t__ ValueOffset; scalar_t__ ValueLength; } ;
struct TYPE_17__ {scalar_t__ Length; TYPE_2__ Resident; int /*<<< orphan*/  IsNonResident; } ;
struct TYPE_16__ {TYPE_6__* pRecord; } ;
struct TYPE_13__ {scalar_t__ ValueLength; } ;
struct TYPE_15__ {scalar_t__ Length; scalar_t__ Type; TYPE_1__ Resident; } ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  TYPE_3__* PNTFS_ATTR_RECORD ;
typedef  TYPE_4__* PNTFS_ATTR_CONTEXT ;
typedef  scalar_t__ PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ATTR_RECORD_ALIGNMENT ; 
 scalar_t__ AttributeEnd ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 TYPE_6__* FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FILE_RECORD_END ; 
 TYPE_3__* FUNC5 (int /*<<< orphan*/ ,TYPE_3__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC6 (TYPE_6__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_NTFS ; 

NTSTATUS
FUNC9(PDEVICE_EXTENSION DeviceExt,
                                   PNTFS_ATTR_CONTEXT AttrContext,
                                   PFILE_RECORD_HEADER FileRecord,
                                   ULONG AttrOffset,
                                   ULONG DataSize)
{
    PNTFS_ATTR_RECORD Destination = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + AttrOffset);
    PNTFS_ATTR_RECORD NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)Destination + Destination->Length);
    PNTFS_ATTR_RECORD FinalAttribute;
    ULONG OldAttributeLength = Destination->Length;
    ULONG NextAttributeOffset;

    FUNC2("InternalSetResidentAttributeLength( %p, %p, %p, %lu, %lu )\n", DeviceExt, AttrContext, FileRecord, AttrOffset, DataSize);

    FUNC1(!AttrContext->pRecord->IsNonResident);

    // Update ValueLength Field
    Destination->Resident.ValueLength = DataSize;

    // Calculate the record length and end marker offset
    Destination->Length = FUNC0(DataSize + AttrContext->pRecord->Resident.ValueOffset, ATTR_RECORD_ALIGNMENT);
    NextAttributeOffset = AttrOffset + Destination->Length;

    // Ensure NextAttributeOffset is aligned to an 8-byte boundary
    FUNC1(NextAttributeOffset % ATTR_RECORD_ALIGNMENT == 0);

    // Will the new attribute be larger than the old one?
    if (Destination->Length > OldAttributeLength)
    {
        // Free the old copy of the attribute in the context, as it will be the wrong length
        FUNC4(AttrContext->pRecord, TAG_NTFS);

        // Create a new copy of the attribute record for the context
        AttrContext->pRecord = FUNC3(NonPagedPool, Destination->Length, TAG_NTFS);
        if (!AttrContext->pRecord)
        {
            FUNC2("Unable to allocate memory for attribute!\n");
            return STATUS_INSUFFICIENT_RESOURCES;
        }
        FUNC7((PVOID)((ULONG_PTR)AttrContext->pRecord + OldAttributeLength), Destination->Length - OldAttributeLength);
        FUNC6(AttrContext->pRecord, Destination, OldAttributeLength);
    }

    // Are there attributes after this one that need to be moved?
    if (NextAttribute->Type != AttributeEnd)
    {
        // Move the attributes after this one
        FinalAttribute = FUNC5(DeviceExt, NextAttribute, NextAttributeOffset, (ULONG_PTR)Destination + Destination->Length);
    }
    else
    {
        // advance to the final "attribute," adjust for the changed length of the attribute we're resizing
        FinalAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)NextAttribute - OldAttributeLength + Destination->Length);
    }

    // Update pRecord's length
    AttrContext->pRecord->Length = Destination->Length;
    AttrContext->pRecord->Resident.ValueLength = DataSize;

    // set the file record end
    FUNC8(FileRecord, FinalAttribute, FILE_RECORD_END);

    //NtfsDumpFileRecord(DeviceExt, FileRecord);

    return STATUS_SUCCESS;
}