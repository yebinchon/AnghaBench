#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_14__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_21__ {scalar_t__ BytesPerIndexRecord; } ;
struct TYPE_25__ {TYPE_1__ NtfsInfo; } ;
struct TYPE_22__ {scalar_t__ TotalSizeOfEntries; scalar_t__ FirstEntryOffset; } ;
struct TYPE_20__ {scalar_t__ Type; } ;
struct TYPE_24__ {scalar_t__ VCN; int /*<<< orphan*/  HasValidVCN; TYPE_3__* IndexEntry; struct TYPE_24__* LesserChild; struct TYPE_24__* NextKey; int /*<<< orphan*/  KeyCount; TYPE_2__ Header; TYPE_14__ Ntfs; struct TYPE_24__* FirstKey; } ;
struct TYPE_23__ {int Length; int Flags; } ;
typedef  scalar_t__* PULONGLONG ;
typedef  int /*<<< orphan*/ * PNTFS_ATTR_CONTEXT ;
typedef  int /*<<< orphan*/  PINDEX_ROOT_ATTRIBUTE ;
typedef  TYPE_3__* PINDEX_ENTRY_ATTRIBUTE ;
typedef  TYPE_4__* PINDEX_BUFFER ;
typedef  TYPE_5__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  TYPE_4__* PB_TREE_KEY ;
typedef  TYPE_4__* PB_TREE_FILENAME_NODE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  B_TREE_KEY ;
typedef  int /*<<< orphan*/  B_TREE_FILENAME_NODE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*) ; 
 void* FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*,TYPE_14__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_5__*,scalar_t__,scalar_t__) ; 
 scalar_t__ NRH_INDX_TYPE ; 
 int NTFS_INDEX_ENTRY_END ; 
 int NTFS_INDEX_ENTRY_NODE ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 scalar_t__ FUNC9 (TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_4__*,int) ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 int /*<<< orphan*/  TRUE ; 

PB_TREE_FILENAME_NODE
FUNC12(PDEVICE_EXTENSION Vcb,
                             PINDEX_ROOT_ATTRIBUTE IndexRoot,
                             PNTFS_ATTR_CONTEXT IndexAllocationAttributeCtx,
                             PINDEX_ENTRY_ATTRIBUTE NodeEntry)
{
    PB_TREE_FILENAME_NODE NewNode;
    PINDEX_ENTRY_ATTRIBUTE CurrentNodeEntry;
    PINDEX_ENTRY_ATTRIBUTE FirstNodeEntry;
    ULONG CurrentEntryOffset = 0;
    PINDEX_BUFFER NodeBuffer;
    ULONG IndexBufferSize = Vcb->NtfsInfo.BytesPerIndexRecord;
    PULONGLONG VCN;
    PB_TREE_KEY CurrentKey;
    NTSTATUS Status;
    ULONGLONG IndexNodeOffset;
    ULONG BytesRead;

    if (IndexAllocationAttributeCtx == NULL)
    {
        FUNC1("ERROR: Couldn't find index allocation attribute even though there should be one!\n");
        return NULL;
    }

    // Get the node number from the end of the node entry
    VCN = (PULONGLONG)((ULONG_PTR)NodeEntry + NodeEntry->Length - sizeof(ULONGLONG));

    // Create the new tree node
    NewNode = FUNC3(NonPagedPool, sizeof(B_TREE_FILENAME_NODE), TAG_NTFS);
    if (!NewNode)
    {
        FUNC1("ERROR: Couldn't allocate memory for new filename node.\n");
        return NULL;
    }
    FUNC11(NewNode, sizeof(B_TREE_FILENAME_NODE));

    // Create the first key
    CurrentKey = FUNC3(NonPagedPool, sizeof(B_TREE_KEY), TAG_NTFS);
    if (!CurrentKey)
    {
        FUNC1("ERROR: Failed to allocate memory for key!\n");
        FUNC4(NewNode, TAG_NTFS);
        return NULL;
    }
    FUNC11(CurrentKey, sizeof(B_TREE_KEY));
    NewNode->FirstKey = CurrentKey;

    // Allocate memory for the node buffer
    NodeBuffer = FUNC3(NonPagedPool, IndexBufferSize, TAG_NTFS);
    if (!NodeBuffer)
    {
        FUNC1("ERROR: Couldn't allocate memory for node buffer!\n");
        FUNC4(CurrentKey, TAG_NTFS);
        FUNC4(NewNode, TAG_NTFS);
        return NULL;
    }

    // Calculate offset into index allocation
    IndexNodeOffset = FUNC6(Vcb, IndexBufferSize, *VCN);

    // TODO: Confirm index bitmap has this node marked as in-use

    // Read the node
    BytesRead = FUNC9(Vcb,
                              IndexAllocationAttributeCtx,
                              IndexNodeOffset,
                              (PCHAR)NodeBuffer,
                              IndexBufferSize);

    FUNC0(BytesRead == IndexBufferSize);
    FUNC7(NodeBuffer->Ntfs.Type == NRH_INDX_TYPE);
    FUNC7(NodeBuffer->VCN == *VCN);

    // Apply the fixup array to the node buffer
    Status = FUNC5(Vcb, &NodeBuffer->Ntfs);
    if (!FUNC8(Status))
    {
        FUNC1("ERROR: Couldn't apply fixup array to index node buffer!\n");
        FUNC4(NodeBuffer, TAG_NTFS);
        FUNC4(CurrentKey, TAG_NTFS);
        FUNC4(NewNode, TAG_NTFS);
        return NULL;
    }

    // Walk through the index and create keys for all the entries
    FirstNodeEntry = (PINDEX_ENTRY_ATTRIBUTE)((ULONG_PTR)(&NodeBuffer->Header)
                                               + NodeBuffer->Header.FirstEntryOffset);
    CurrentNodeEntry = FirstNodeEntry;
    while (CurrentEntryOffset < NodeBuffer->Header.TotalSizeOfEntries)
    {
        // Allocate memory for the current entry
        CurrentKey->IndexEntry = FUNC3(NonPagedPool, CurrentNodeEntry->Length, TAG_NTFS);
        if (!CurrentKey->IndexEntry)
        {
            FUNC1("ERROR: Couldn't allocate memory for next key!\n");
            FUNC2(NewNode);
            FUNC4(NodeBuffer, TAG_NTFS);
            return NULL;
        }

        NewNode->KeyCount++;

        // If this isn't the last entry
        if (!(CurrentNodeEntry->Flags & NTFS_INDEX_ENTRY_END))
        {
            // Create the next key
            PB_TREE_KEY NextKey = FUNC3(NonPagedPool, sizeof(B_TREE_KEY), TAG_NTFS);
            if (!NextKey)
            {
                FUNC1("ERROR: Couldn't allocate memory for next key!\n");
                FUNC2(NewNode);
                FUNC4(NodeBuffer, TAG_NTFS);
                return NULL;
            }
            FUNC11(NextKey, sizeof(B_TREE_KEY));

            // Add NextKey to the end of the list
            CurrentKey->NextKey = NextKey;

            // Copy the current entry to its key
            FUNC10(CurrentKey->IndexEntry, CurrentNodeEntry, CurrentNodeEntry->Length);

            // See if the current key has a sub-node
            if (CurrentKey->IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE)
            {
                CurrentKey->LesserChild = FUNC12(Vcb,
                                                                       IndexRoot,
                                                                       IndexAllocationAttributeCtx,
                                                                       CurrentKey->IndexEntry);
            }

            CurrentKey = NextKey;
        }
        else
        {
            // Copy the final entry to its key
            FUNC10(CurrentKey->IndexEntry, CurrentNodeEntry, CurrentNodeEntry->Length);
            CurrentKey->NextKey = NULL;

            // See if the current key has a sub-node
            if (CurrentKey->IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE)
            {
                CurrentKey->LesserChild = FUNC12(Vcb,
                                                                       IndexRoot,
                                                                       IndexAllocationAttributeCtx,
                                                                       CurrentKey->IndexEntry);
            }

            break;
        }

        // Advance to the next entry
        CurrentEntryOffset += CurrentNodeEntry->Length;
        CurrentNodeEntry = (PINDEX_ENTRY_ATTRIBUTE)((ULONG_PTR)CurrentNodeEntry + CurrentNodeEntry->Length);
    }

    NewNode->VCN = *VCN;
    NewNode->HasValidVCN = TRUE;

    FUNC4(NodeBuffer, TAG_NTFS);

    return NewNode;
}