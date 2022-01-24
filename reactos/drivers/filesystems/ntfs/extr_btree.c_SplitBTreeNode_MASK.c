#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_22__ {TYPE_2__* IndexEntry; TYPE_2__* LesserChild; struct TYPE_22__* NextKey; } ;
struct TYPE_20__ {int /*<<< orphan*/  Name; int /*<<< orphan*/  NameLength; } ;
struct TYPE_21__ {scalar_t__ KeyCount; int Length; int Flags; TYPE_3__* FirstKey; int /*<<< orphan*/  VCN; TYPE_1__ FileName; int /*<<< orphan*/  DiskNeedsUpdating; } ;
typedef  TYPE_2__* PINDEX_ENTRY_ATTRIBUTE ;
typedef  TYPE_3__* PB_TREE_KEY ;
typedef  TYPE_2__* PB_TREE_FILENAME_NODE ;
typedef  int /*<<< orphan*/  PB_TREE ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  B_TREE_FILENAME_NODE ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 void* FUNC2 (TYPE_3__*) ; 
 TYPE_3__* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,TYPE_2__*,TYPE_3__**,TYPE_2__**,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int NTFS_INDEX_ENTRY_NODE ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 int /*<<< orphan*/  TRUE ; 

NTSTATUS
FUNC13(PB_TREE Tree,
               PB_TREE_FILENAME_NODE Node,
               PB_TREE_KEY *MedianKey,
               PB_TREE_FILENAME_NODE *NewRightHandSibling,
               BOOLEAN CaseSensitive)
{
    ULONG MedianKeyIndex;
    PB_TREE_KEY LastKeyBeforeMedian, FirstKeyAfterMedian;
    ULONG KeyCount;
    ULONG HalfSize;
    ULONG SizeSum;
    ULONG i;

    FUNC4("SplitBTreeNode(%p, %p, %p, %p, %s) called\n",
            Tree,
            Node,
            MedianKey,
            NewRightHandSibling,
            CaseSensitive ? "TRUE" : "FALSE");

#ifndef NDEBUG
    FUNC6(Node, 0, 0);
#endif

    // Create the right hand sibling
    *NewRightHandSibling = FUNC7(NonPagedPool, sizeof(B_TREE_FILENAME_NODE), TAG_NTFS);
    if (*NewRightHandSibling == NULL)
    {
        FUNC5("Error: Failed to allocate memory for right hand sibling!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    FUNC11(*NewRightHandSibling, sizeof(B_TREE_FILENAME_NODE));
    (*NewRightHandSibling)->DiskNeedsUpdating = TRUE;


    // Find the last key before the median

    // This is roughly how NTFS-3G calculates median, and it's not congruent with what Windows does:
    /*
    // find the median key index
    MedianKeyIndex = (Node->KeyCount + 1) / 2;
    MedianKeyIndex--;

    LastKeyBeforeMedian = Node->FirstKey;
    for (i = 0; i < MedianKeyIndex - 1; i++)
        LastKeyBeforeMedian = LastKeyBeforeMedian->NextKey;*/

    // The method we'll use is a little bit closer to how Windows determines the median but it's not identical.
    // What Windows does is actually more complicated than this, I think because Windows allocates more slack space to Odd-numbered
    // Index Records, leaving less room for index entries in these records (I haven't discovered why this is done).
    // (Neither Windows nor chkdsk complain if we choose a different median than Windows would have chosen, as our median will be in the ballpark)

    // Use size to locate the median key / index
    LastKeyBeforeMedian = Node->FirstKey;
    MedianKeyIndex = 0;
    HalfSize = 2016; // half the allocated size after subtracting the first index entry offset (TODO: MATH)
    SizeSum = 0;
    for (i = 0; i < Node->KeyCount; i++)
    {
        SizeSum += LastKeyBeforeMedian->IndexEntry->Length;

        if (SizeSum > HalfSize)
            break;

        MedianKeyIndex++;
        LastKeyBeforeMedian = LastKeyBeforeMedian->NextKey;
    }

    // Now we can get the median key and the key that follows it
    *MedianKey = LastKeyBeforeMedian->NextKey;
    FirstKeyAfterMedian = (*MedianKey)->NextKey;

    FUNC5("%lu keys, %lu median\n", Node->KeyCount, MedianKeyIndex);
    FUNC5("\t\tMedian: %.*S\n", (*MedianKey)->IndexEntry->FileName.NameLength, (*MedianKey)->IndexEntry->FileName.Name);

    // "Node" will be the left hand sibling after the split, containing all keys prior to the median key

    // We need to create a dummy pointer at the end of the LHS. The dummy's child will be the median's child.
    LastKeyBeforeMedian->NextKey = FUNC3(FUNC1((*MedianKey)->IndexEntry->Flags, NTFS_INDEX_ENTRY_NODE));
    if (LastKeyBeforeMedian->NextKey == NULL)
    {
        FUNC5("Error: Couldn't allocate dummy key!\n");
        LastKeyBeforeMedian->NextKey = *MedianKey;
        FUNC8(*NewRightHandSibling, TAG_NTFS);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    // Did the median key have a child node?
    if ((*MedianKey)->IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE)
    {
        // Set the child of the new dummy key
        LastKeyBeforeMedian->NextKey->LesserChild = (*MedianKey)->LesserChild;

        // Give the dummy key's index entry the same sub-node VCN the median
        FUNC12(LastKeyBeforeMedian->NextKey->IndexEntry, FUNC9((*MedianKey)->IndexEntry));
    }
    else
    {
        // Median key didn't have a child node, but it will. Create a new index entry large enough to store a VCN.
        PINDEX_ENTRY_ATTRIBUTE NewIndexEntry = FUNC7(NonPagedPool,
                                                                     (*MedianKey)->IndexEntry->Length + sizeof(ULONGLONG),
                                                                     TAG_NTFS);
        if (!NewIndexEntry)
        {
            FUNC5("Unable to allocate memory for new index entry!\n");
            LastKeyBeforeMedian->NextKey = *MedianKey;
            FUNC8(*NewRightHandSibling, TAG_NTFS);
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        // Copy the old index entry to the new one
        FUNC10(NewIndexEntry, (*MedianKey)->IndexEntry, (*MedianKey)->IndexEntry->Length);

        // Use the new index entry after freeing the old one
        FUNC8((*MedianKey)->IndexEntry, TAG_NTFS);
        (*MedianKey)->IndexEntry = NewIndexEntry;

        // Update the length for the VCN
        (*MedianKey)->IndexEntry->Length += sizeof(ULONGLONG);

        // Set the node flag
        (*MedianKey)->IndexEntry->Flags |= NTFS_INDEX_ENTRY_NODE;
    }

    // "Node" will become the child of the median key
    (*MedianKey)->LesserChild = Node;
    FUNC12((*MedianKey)->IndexEntry, Node->VCN);

    // Update Node's KeyCount (remember to add 1 for the new dummy key)
    Node->KeyCount = MedianKeyIndex + 2;

    KeyCount = FUNC2(Node->FirstKey);
    FUNC0(Node->KeyCount == KeyCount);

    // everything to the right of MedianKey becomes the right hand sibling of Node
    (*NewRightHandSibling)->FirstKey = FirstKeyAfterMedian;
    (*NewRightHandSibling)->KeyCount = FUNC2(FirstKeyAfterMedian);

#ifndef NDEBUG
    FUNC5("Left-hand node after split:\n");
    FUNC6(Node, 0, 0);

    FUNC5("Right-hand sibling node after split:\n");
    FUNC6(*NewRightHandSibling, 0, 0);
#endif

    return STATUS_SUCCESS;
}