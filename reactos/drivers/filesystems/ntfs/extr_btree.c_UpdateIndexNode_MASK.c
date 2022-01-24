#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_16__ {scalar_t__ KeyCount; void* DiskNeedsUpdating; int /*<<< orphan*/  VCN; void* HasValidVCN; TYPE_3__* FirstKey; } ;
struct TYPE_15__ {struct TYPE_15__* NextKey; TYPE_1__* IndexEntry; TYPE_4__* LesserChild; } ;
struct TYPE_14__ {int Length; int /*<<< orphan*/  Flags; } ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  int /*<<< orphan*/  PNTFS_ATTR_CONTEXT ;
typedef  TYPE_1__* PINDEX_ENTRY_ATTRIBUTE ;
typedef  TYPE_1__* PINDEX_BUFFER ;
typedef  int /*<<< orphan*/  PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  TYPE_3__* PB_TREE_KEY ;
typedef  TYPE_4__* PB_TREE_FILENAME_NODE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  void* BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,void*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,scalar_t__,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 void* FUNC6 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 void* FALSE ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTFS_INDEX_ENTRY_NODE ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,TYPE_1__*,int) ; 
 int /*<<< orphan*/  STATUS_END_OF_FILE ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/  const,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC13(PDEVICE_EXTENSION DeviceExt,
                PFILE_RECORD_HEADER FileRecord,
                PB_TREE_FILENAME_NODE Node,
                ULONG IndexBufferSize,
                PNTFS_ATTR_CONTEXT IndexAllocationContext,
                ULONG IndexAllocationOffset)
{
    ULONG i;
    PB_TREE_KEY CurrentKey = Node->FirstKey;
    BOOLEAN HasChildren = FALSE;
    NTSTATUS Status;


    FUNC4("UpdateIndexNode(%p, %p, %p, %lu, %p, %lu) called for index node with VCN %I64u\n",
           DeviceExt,
           FileRecord,
           Node,
           IndexBufferSize,
           IndexAllocationContext,
           IndexAllocationOffset,
           Node->VCN);

    // Walk through the node and look for children to update
    for (i = 0; i < Node->KeyCount; i++)
    {
        FUNC0(CurrentKey);

        // If there's a child node
        if (CurrentKey->LesserChild)
        {
            HasChildren = TRUE;

            // Update the child node on disk
            Status = FUNC13(DeviceExt, FileRecord, CurrentKey->LesserChild, IndexBufferSize, IndexAllocationContext, IndexAllocationOffset);
            if (!FUNC9(Status))
            {
                FUNC5("ERROR: Failed to update child node!\n");
                return Status;
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
                    FUNC5("ERROR: Unable to allocate memory for new index entry!\n");
                    return STATUS_INSUFFICIENT_RESOURCES;
                }

                // Copy the old entry to the new one
                FUNC10(NewEntry, CurrentKey->IndexEntry, CurrentKey->IndexEntry->Length);

                NewEntry->Length += sizeof(ULONGLONG);

                // Free the old memory
                FUNC7(CurrentKey->IndexEntry, TAG_NTFS);

                CurrentKey->IndexEntry = NewEntry;
            }

            // Update the VCN stored in the index entry of CurrentKey
            FUNC11(CurrentKey->IndexEntry, CurrentKey->LesserChild->VCN);

            CurrentKey->IndexEntry->Flags |= NTFS_INDEX_ENTRY_NODE;
        }

        CurrentKey = CurrentKey->NextKey;
    }


    // Do we need to write this node to disk?
    if (Node->DiskNeedsUpdating)
    {
        ULONGLONG NodeOffset;
        ULONG LengthWritten;
        PINDEX_BUFFER IndexBuffer;

        // Does the node need to be assigned a VCN?
        if (!Node->HasValidVCN)
        {
            // Allocate the node
            Status = FUNC1(DeviceExt,
                                       FileRecord,
                                       IndexBufferSize,
                                       IndexAllocationContext,
                                       IndexAllocationOffset,
                                       &Node->VCN);
            if (!FUNC9(Status))
            {
                FUNC5("ERROR: Failed to allocate index record in index allocation!\n");
                return Status;
            }

            Node->HasValidVCN = TRUE;
        }

        // Allocate memory for an index buffer
        IndexBuffer = FUNC6(NonPagedPool, IndexBufferSize, TAG_NTFS);
        if (!IndexBuffer)
        {
            FUNC5("ERROR: Failed to allocate %lu bytes for index buffer!\n", IndexBufferSize);
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        // Create the index buffer we'll be writing to disk to represent this node
        Status = FUNC3(DeviceExt, Node, IndexBufferSize, HasChildren, IndexBuffer);
        if (!FUNC9(Status))
        {
            FUNC5("ERROR: Failed to create index buffer from node!\n");
            FUNC7(IndexBuffer, TAG_NTFS);
            return Status;
        }

        // Get Offset of index buffer in index allocation
        NodeOffset = FUNC8(DeviceExt, IndexBufferSize, Node->VCN);

        // Write the buffer to the index allocation
        Status = FUNC12(DeviceExt, IndexAllocationContext, NodeOffset, (const PUCHAR)IndexBuffer, IndexBufferSize, &LengthWritten, FileRecord);
        if (!FUNC9(Status) || LengthWritten != IndexBufferSize)
        {
            FUNC5("ERROR: Failed to update index allocation!\n");
            FUNC7(IndexBuffer, TAG_NTFS);
            if (!FUNC9(Status))
                return Status;
            else
                return STATUS_END_OF_FILE;
        }

        Node->DiskNeedsUpdating = FALSE;

        // Free the index buffer
        FUNC7(IndexBuffer, TAG_NTFS);
    }

    return STATUS_SUCCESS;
}