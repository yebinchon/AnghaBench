#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_28__ {int /*<<< orphan*/  VCN; } ;
struct TYPE_27__ {TYPE_1__* RootNode; } ;
struct TYPE_26__ {struct TYPE_26__* NextKey; TYPE_8__* LesserChild; TYPE_3__* IndexEntry; } ;
struct TYPE_25__ {scalar_t__ BytesInUse; } ;
struct TYPE_24__ {int Length; int /*<<< orphan*/  Flags; } ;
struct TYPE_23__ {scalar_t__ Length; } ;
struct TYPE_22__ {scalar_t__ KeyCount; TYPE_5__* FirstKey; } ;
typedef  TYPE_2__* PNTFS_ATTR_RECORD ;
typedef  int /*<<< orphan*/  PNTFS_ATTR_CONTEXT ;
typedef  TYPE_3__* PINDEX_ENTRY_ATTRIBUTE ;
typedef  TYPE_4__* PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  TYPE_5__* PB_TREE_KEY ;
typedef  TYPE_6__* PB_TREE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_2__*,char*,int) ; 
 int /*<<< orphan*/  AttributeIndexAllocation ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*) ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*,int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  NTFS_INDEX_ENTRY_NODE ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,TYPE_4__*,TYPE_8__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 

NTSTATUS
FUNC15(PDEVICE_EXTENSION DeviceExt,
                      PB_TREE Tree,
                      ULONG IndexBufferSize,
                      PFILE_RECORD_HEADER FileRecord)
{
    // Find the index allocation and bitmap
    PNTFS_ATTR_CONTEXT IndexAllocationContext;
    PB_TREE_KEY CurrentKey;
    NTSTATUS Status;
    BOOLEAN HasIndexAllocation = FALSE;
    ULONG i;
    ULONG IndexAllocationOffset;

    FUNC3("UpdateIndexAllocation() called.\n");

    Status = FUNC8(DeviceExt, FileRecord, AttributeIndexAllocation, L"$I30", 4, &IndexAllocationContext, &IndexAllocationOffset);
    if (FUNC9(Status))
    {
        HasIndexAllocation = TRUE;

#ifndef NDEBUG
        FUNC10(DeviceExt,
                     IndexAllocationContext,
                     IndexBufferSize);
#endif
    }
    // Walk through the root node and update all the sub-nodes
    CurrentKey = Tree->RootNode->FirstKey;
    for (i = 0; i < Tree->RootNode->KeyCount; i++)
    {
        if (CurrentKey->LesserChild)
        {
            if (!HasIndexAllocation)
            {
                // We need to add an index allocation to the file record
                PNTFS_ATTR_RECORD EndMarker = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + FileRecord->BytesInUse - (sizeof(ULONG) * 2));
                FUNC4("Adding index allocation...\n");

                // Add index allocation to the very end of the file record
                Status = FUNC1(DeviceExt,
                                            FileRecord,
                                            EndMarker,
                                            L"$I30",
                                            4);
                if (!FUNC9(Status))
                {
                    FUNC4("ERROR: Failed to add index allocation!\n");
                    return Status;
                }

                // Find the new attribute
                Status = FUNC8(DeviceExt, FileRecord, AttributeIndexAllocation, L"$I30", 4, &IndexAllocationContext, &IndexAllocationOffset);
                if (!FUNC9(Status))
                {
                    FUNC4("ERROR: Couldn't find newly-created index allocation!\n");
                    return Status;
                }

                // Advance end marker 
                EndMarker = (PNTFS_ATTR_RECORD)((ULONG_PTR)EndMarker + EndMarker->Length);

                // Add index bitmap to the very end of the file record
                Status = FUNC0(DeviceExt,
                                   FileRecord,
                                   EndMarker,
                                   L"$I30",
                                   4);
                if (!FUNC9(Status))
                {
                    FUNC4("ERROR: Failed to add index bitmap!\n");
                    FUNC11(IndexAllocationContext);
                    return Status;
                }

                HasIndexAllocation = TRUE;
            }

            // Is the Index Entry large enough to store the VCN?
            if (!FUNC2(CurrentKey->IndexEntry->Flags, NTFS_INDEX_ENTRY_NODE))
            {
                // Allocate memory for the larger index entry
                PINDEX_ENTRY_ATTRIBUTE NewEntry = FUNC6(NonPagedPool,
                                                                        CurrentKey->IndexEntry->Length + sizeof(ULONGLONG),
                                                                        TAG_NTFS);
                if (!NewEntry)
                {
                    FUNC4("ERROR: Unable to allocate memory for new index entry!\n");
                    if (HasIndexAllocation)
                        FUNC11(IndexAllocationContext);
                    return STATUS_INSUFFICIENT_RESOURCES;
                }

                // Copy the old entry to the new one
                FUNC12(NewEntry, CurrentKey->IndexEntry, CurrentKey->IndexEntry->Length);

                NewEntry->Length += sizeof(ULONGLONG);

                // Free the old memory
                FUNC7(CurrentKey->IndexEntry, TAG_NTFS);

                CurrentKey->IndexEntry = NewEntry;
                CurrentKey->IndexEntry->Flags |= NTFS_INDEX_ENTRY_NODE;
            }

            // Update the sub-node
            Status = FUNC14(DeviceExt, FileRecord, CurrentKey->LesserChild, IndexBufferSize, IndexAllocationContext, IndexAllocationOffset);
            if (!FUNC9(Status))
            {
                FUNC4("ERROR: Failed to update index node!\n");
                FUNC11(IndexAllocationContext);
                return Status;
            }

            // Update the VCN stored in the index entry of CurrentKey
            FUNC13(CurrentKey->IndexEntry, CurrentKey->LesserChild->VCN);
        }
        CurrentKey = CurrentKey->NextKey;
    }

#ifndef NDEBUG
    FUNC5(Tree);
#endif

    if (HasIndexAllocation)
    {
#ifndef NDEBUG
        FUNC10(DeviceExt,
                     IndexAllocationContext,
                     IndexBufferSize);
#endif
        FUNC11(IndexAllocationContext);
    }

    return STATUS_SUCCESS;
}