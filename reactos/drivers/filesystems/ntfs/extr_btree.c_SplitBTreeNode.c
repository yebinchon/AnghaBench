
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_22__ {TYPE_2__* IndexEntry; TYPE_2__* LesserChild; struct TYPE_22__* NextKey; } ;
struct TYPE_20__ {int Name; int NameLength; } ;
struct TYPE_21__ {scalar_t__ KeyCount; int Length; int Flags; TYPE_3__* FirstKey; int VCN; TYPE_1__ FileName; int DiskNeedsUpdating; } ;
typedef TYPE_2__* PINDEX_ENTRY_ATTRIBUTE ;
typedef TYPE_3__* PB_TREE_KEY ;
typedef TYPE_2__* PB_TREE_FILENAME_NODE ;
typedef int PB_TREE ;
typedef int NTSTATUS ;
typedef int B_TREE_FILENAME_NODE ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (int) ;
 int BooleanFlagOn (int,int) ;
 void* CountBTreeKeys (TYPE_3__*) ;
 TYPE_3__* CreateDummyKey (int ) ;
 int DPRINT (char*,int ,TYPE_2__*,TYPE_3__**,TYPE_2__**,char*) ;
 int DPRINT1 (char*,...) ;
 int DumpBTreeNode (TYPE_2__*,int ,int ) ;
 void* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (TYPE_2__*,int ) ;
 int GetIndexEntryVCN (TYPE_2__*) ;
 int NTFS_INDEX_ENTRY_NODE ;
 int NonPagedPool ;
 int RtlCopyMemory (TYPE_2__*,TYPE_2__*,int) ;
 int RtlZeroMemory (TYPE_2__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int SetIndexEntryVCN (TYPE_2__*,int ) ;
 int TAG_NTFS ;
 int TRUE ;

NTSTATUS
SplitBTreeNode(PB_TREE Tree,
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

    DPRINT("SplitBTreeNode(%p, %p, %p, %p, %s) called\n",
            Tree,
            Node,
            MedianKey,
            NewRightHandSibling,
            CaseSensitive ? "TRUE" : "FALSE");


    DumpBTreeNode(Node, 0, 0);



    *NewRightHandSibling = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_FILENAME_NODE), TAG_NTFS);
    if (*NewRightHandSibling == ((void*)0))
    {
        DPRINT1("Error: Failed to allocate memory for right hand sibling!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    RtlZeroMemory(*NewRightHandSibling, sizeof(B_TREE_FILENAME_NODE));
    (*NewRightHandSibling)->DiskNeedsUpdating = TRUE;
    LastKeyBeforeMedian = Node->FirstKey;
    MedianKeyIndex = 0;
    HalfSize = 2016;
    SizeSum = 0;
    for (i = 0; i < Node->KeyCount; i++)
    {
        SizeSum += LastKeyBeforeMedian->IndexEntry->Length;

        if (SizeSum > HalfSize)
            break;

        MedianKeyIndex++;
        LastKeyBeforeMedian = LastKeyBeforeMedian->NextKey;
    }


    *MedianKey = LastKeyBeforeMedian->NextKey;
    FirstKeyAfterMedian = (*MedianKey)->NextKey;

    DPRINT1("%lu keys, %lu median\n", Node->KeyCount, MedianKeyIndex);
    DPRINT1("\t\tMedian: %.*S\n", (*MedianKey)->IndexEntry->FileName.NameLength, (*MedianKey)->IndexEntry->FileName.Name);




    LastKeyBeforeMedian->NextKey = CreateDummyKey(BooleanFlagOn((*MedianKey)->IndexEntry->Flags, NTFS_INDEX_ENTRY_NODE));
    if (LastKeyBeforeMedian->NextKey == ((void*)0))
    {
        DPRINT1("Error: Couldn't allocate dummy key!\n");
        LastKeyBeforeMedian->NextKey = *MedianKey;
        ExFreePoolWithTag(*NewRightHandSibling, TAG_NTFS);
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    if ((*MedianKey)->IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE)
    {

        LastKeyBeforeMedian->NextKey->LesserChild = (*MedianKey)->LesserChild;


        SetIndexEntryVCN(LastKeyBeforeMedian->NextKey->IndexEntry, GetIndexEntryVCN((*MedianKey)->IndexEntry));
    }
    else
    {

        PINDEX_ENTRY_ATTRIBUTE NewIndexEntry = ExAllocatePoolWithTag(NonPagedPool,
                                                                     (*MedianKey)->IndexEntry->Length + sizeof(ULONGLONG),
                                                                     TAG_NTFS);
        if (!NewIndexEntry)
        {
            DPRINT1("Unable to allocate memory for new index entry!\n");
            LastKeyBeforeMedian->NextKey = *MedianKey;
            ExFreePoolWithTag(*NewRightHandSibling, TAG_NTFS);
            return STATUS_INSUFFICIENT_RESOURCES;
        }


        RtlCopyMemory(NewIndexEntry, (*MedianKey)->IndexEntry, (*MedianKey)->IndexEntry->Length);


        ExFreePoolWithTag((*MedianKey)->IndexEntry, TAG_NTFS);
        (*MedianKey)->IndexEntry = NewIndexEntry;


        (*MedianKey)->IndexEntry->Length += sizeof(ULONGLONG);


        (*MedianKey)->IndexEntry->Flags |= NTFS_INDEX_ENTRY_NODE;
    }


    (*MedianKey)->LesserChild = Node;
    SetIndexEntryVCN((*MedianKey)->IndexEntry, Node->VCN);


    Node->KeyCount = MedianKeyIndex + 2;

    KeyCount = CountBTreeKeys(Node->FirstKey);
    ASSERT(Node->KeyCount == KeyCount);


    (*NewRightHandSibling)->FirstKey = FirstKeyAfterMedian;
    (*NewRightHandSibling)->KeyCount = CountBTreeKeys(FirstKeyAfterMedian);


    DPRINT1("Left-hand node after split:\n");
    DumpBTreeNode(Node, 0, 0);

    DPRINT1("Right-hand sibling node after split:\n");
    DumpBTreeNode(*NewRightHandSibling, 0, 0);


    return STATUS_SUCCESS;
}
