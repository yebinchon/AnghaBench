
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {TYPE_1__* RootNode; } ;
struct TYPE_10__ {int KeyCount; void* DiskNeedsUpdating; struct TYPE_10__* FirstKey; struct TYPE_10__* LesserChild; } ;
typedef TYPE_1__* PB_TREE_KEY ;
typedef TYPE_1__* PB_TREE_FILENAME_NODE ;
typedef TYPE_3__* PB_TREE ;
typedef int NTSTATUS ;
typedef int B_TREE_FILENAME_NODE ;


 TYPE_1__* CreateDummyKey (void*) ;
 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int DumpBTree (TYPE_3__*) ;
 TYPE_1__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 int NonPagedPool ;
 int RtlZeroMemory (TYPE_1__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TAG_NTFS ;
 void* TRUE ;

NTSTATUS
DemoteBTreeRoot(PB_TREE Tree)
{
    PB_TREE_FILENAME_NODE NewSubNode, NewIndexRoot;
    PB_TREE_KEY DummyKey;

    DPRINT("Collapsing Index Root into sub-node.\n");


    DumpBTree(Tree);



    NewSubNode = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_FILENAME_NODE), TAG_NTFS);
    if (!NewSubNode)
    {
        DPRINT1("ERROR: Couldn't allocate memory for new sub-node.\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    RtlZeroMemory(NewSubNode, sizeof(B_TREE_FILENAME_NODE));


    NewSubNode->KeyCount = Tree->RootNode->KeyCount;
    NewSubNode->FirstKey = Tree->RootNode->FirstKey;
    NewSubNode->DiskNeedsUpdating = TRUE;


    DummyKey = CreateDummyKey(TRUE);
    if (!DummyKey)
    {
        DPRINT1("ERROR: Couldn't allocate memory for new root node.\n");
        ExFreePoolWithTag(NewSubNode, TAG_NTFS);
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    DummyKey->LesserChild = NewSubNode;


    NewIndexRoot = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_FILENAME_NODE), TAG_NTFS);
    if (!NewIndexRoot)
    {
        DPRINT1("ERROR: Couldn't allocate memory for new index root.\n");
        ExFreePoolWithTag(NewSubNode, TAG_NTFS);
        ExFreePoolWithTag(DummyKey, TAG_NTFS);
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    RtlZeroMemory(NewIndexRoot, sizeof(B_TREE_FILENAME_NODE));

    NewIndexRoot->DiskNeedsUpdating = TRUE;


    NewIndexRoot->FirstKey = DummyKey;
    NewIndexRoot->KeyCount = 1;
    NewIndexRoot->DiskNeedsUpdating = TRUE;


    Tree->RootNode = NewIndexRoot;


    DumpBTree(Tree);


    return STATUS_SUCCESS;
}
