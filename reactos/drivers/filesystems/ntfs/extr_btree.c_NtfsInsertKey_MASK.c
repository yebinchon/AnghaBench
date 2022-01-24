#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_28__   TYPE_5__ ;
typedef  struct TYPE_27__   TYPE_4__ ;
typedef  struct TYPE_26__   TYPE_3__ ;
typedef  struct TYPE_25__   TYPE_2__ ;
typedef  struct TYPE_24__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_28__ {TYPE_4__* RootNode; } ;
struct TYPE_27__ {scalar_t__ KeyCount; TYPE_3__* FirstKey; void* DiskNeedsUpdating; } ;
struct TYPE_26__ {struct TYPE_26__* NextKey; TYPE_4__* LesserChild; TYPE_2__* IndexEntry; } ;
struct TYPE_24__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  NameLength; } ;
struct TYPE_25__ {TYPE_1__ FileName; } ;
typedef  int /*<<< orphan*/  PFILENAME_ATTRIBUTE ;
typedef  TYPE_3__* PB_TREE_KEY ;
typedef  TYPE_4__* PB_TREE_FILENAME_NODE ;
typedef  TYPE_5__* PB_TREE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LONG ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (TYPE_3__*,TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,TYPE_5__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__*,char*,scalar_t__,scalar_t__,TYPE_3__**,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  Header ; 
 int /*<<< orphan*/  INDEX_BUFFER ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC10 (TYPE_5__*,TYPE_4__*,TYPE_3__**,TYPE_4__**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 void* TRUE ; 

NTSTATUS
FUNC11(PB_TREE Tree,
              ULONGLONG FileReference,
              PFILENAME_ATTRIBUTE FileNameAttribute,
              PB_TREE_FILENAME_NODE Node,
              BOOLEAN CaseSensitive,
              ULONG MaxIndexRootSize,
              ULONG IndexRecordSize,
              PB_TREE_KEY *MedianKey,
              PB_TREE_FILENAME_NODE *NewRightHandSibling)
{
    PB_TREE_KEY NewKey, CurrentKey, PreviousKey;
    NTSTATUS Status = STATUS_SUCCESS;
    ULONG NodeSize;
    ULONG AllocatedNodeSize;
    ULONG MaxNodeSizeWithoutHeader;
    ULONG i;

    *MedianKey = NULL;
    *NewRightHandSibling = NULL;

    FUNC3("NtfsInsertKey(%p, 0x%I64x, %p, %p, %s, %lu, %lu, %p, %p)\n",
           Tree,
           FileReference,
           FileNameAttribute,
           Node,
           CaseSensitive ? "TRUE" : "FALSE",
           MaxIndexRootSize,
           IndexRecordSize,
           MedianKey,
           NewRightHandSibling);

    // Create the key for the filename attribute
    NewKey = FUNC2(FileReference, FileNameAttribute);
    if (!NewKey)
        return STATUS_INSUFFICIENT_RESOURCES;

    // Find where to insert the key
    CurrentKey = Node->FirstKey;
    PreviousKey = NULL;
    for (i = 0; i < Node->KeyCount; i++)
    {
        // Should the New Key go before the current key?
        LONG Comparison = FUNC1(NewKey, CurrentKey, CaseSensitive);

        if (Comparison == 0)
        {
            FUNC4("\t\tComparison == 0: %.*S\n", NewKey->IndexEntry->FileName.NameLength, NewKey->IndexEntry->FileName.Name);
            FUNC4("\t\tComparison == 0: %.*S\n", CurrentKey->IndexEntry->FileName.NameLength, CurrentKey->IndexEntry->FileName.Name);
        }
        FUNC0(Comparison != 0);

        // Is NewKey < CurrentKey?
        if (Comparison < 0)
        {
            // Does CurrentKey have a sub-node?
            if (CurrentKey->LesserChild)
            {
                PB_TREE_KEY NewLeftKey;
                PB_TREE_FILENAME_NODE NewChild;

                // Insert the key into the child node
                Status = FUNC11(Tree,
                                       FileReference,
                                       FileNameAttribute,
                                       CurrentKey->LesserChild,
                                       CaseSensitive,
                                       MaxIndexRootSize,
                                       IndexRecordSize,
                                       &NewLeftKey, 
                                       &NewChild);
                if (!FUNC9(Status))
                {
                    FUNC4("ERROR: Failed to insert key.\n");
                    FUNC6(NewKey, TAG_NTFS);
                    return Status;
                }

                // Did the child node get split?
                if (NewLeftKey)
                {
                    FUNC0(NewChild != NULL);

                    // Insert the new left key to the left of the current key
                    NewLeftKey->NextKey = CurrentKey;

                    // Is CurrentKey the first key?
                    if (!PreviousKey)
                        Node->FirstKey = NewLeftKey;
                    else
                        PreviousKey->NextKey = NewLeftKey;

                    // CurrentKey->LesserChild will be the right-hand sibling
                    CurrentKey->LesserChild = NewChild;

                    Node->KeyCount++;
                    Node->DiskNeedsUpdating = TRUE;

#ifndef NDEBUG
                    FUNC5(Tree);
#endif
                }
            }
            else
            {
                // Insert New Key before Current Key
                NewKey->NextKey = CurrentKey;

                // Increase KeyCount and mark node as dirty
                Node->KeyCount++;
                Node->DiskNeedsUpdating = TRUE;

                // was CurrentKey the first key?
                if (CurrentKey == Node->FirstKey)
                    Node->FirstKey = NewKey;
                else
                    PreviousKey->NextKey = NewKey;
            }
            break;
        }

        PreviousKey = CurrentKey;
        CurrentKey = CurrentKey->NextKey;
    }

    // Determine how much space the index entries will need
    NodeSize = FUNC8(Node);

    // Is Node not the root node?
    if (Node != Tree->RootNode)
    {
        // Calculate maximum size of index entries without any headers
        AllocatedNodeSize = IndexRecordSize - FUNC7(INDEX_BUFFER, Header);

        // TODO: Replace magic with math 
        MaxNodeSizeWithoutHeader = AllocatedNodeSize - 0x28;
        
        // Has the node grown larger than its allocated size?
        if (NodeSize > MaxNodeSizeWithoutHeader)
        {
            NTSTATUS Status;

            Status = FUNC10(Tree, Node, MedianKey, NewRightHandSibling, CaseSensitive);
            if (!FUNC9(Status))
            {
                FUNC4("ERROR: Failed to split B-Tree node!\n");
                return Status;
            }

            return Status;
        }
    }

    // NewEntry and NewKey will be destroyed later by DestroyBTree()

    return Status;
}