
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_7__ ;
typedef struct TYPE_31__ TYPE_6__ ;
typedef struct TYPE_30__ TYPE_5__ ;
typedef struct TYPE_29__ TYPE_4__ ;
typedef struct TYPE_28__ TYPE_3__ ;
typedef struct TYPE_27__ TYPE_2__ ;
typedef struct TYPE_26__ TYPE_1__ ;
typedef struct TYPE_25__ TYPE_11__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_32__ {void* LesserChild; TYPE_11__* IndexEntry; struct TYPE_32__* NextKey; int KeyCount; struct TYPE_32__* RootNode; struct TYPE_32__* FirstKey; } ;
struct TYPE_31__ {int Length; int Flags; } ;
struct TYPE_28__ {scalar_t__ FirstEntryOffset; scalar_t__ TotalSizeOfEntries; } ;
struct TYPE_30__ {TYPE_3__ Header; } ;
struct TYPE_29__ {TYPE_2__* pRecord; } ;
struct TYPE_26__ {scalar_t__ ValueLength; } ;
struct TYPE_27__ {TYPE_1__ Resident; } ;
struct TYPE_25__ {int Flags; } ;
typedef TYPE_4__* PNTFS_ATTR_CONTEXT ;
typedef TYPE_5__* PINDEX_ROOT_ATTRIBUTE ;
typedef TYPE_6__* PINDEX_ENTRY_ATTRIBUTE ;
typedef int PFILE_RECORD_HEADER ;
typedef int PDEVICE_EXTENSION ;
typedef TYPE_7__* PB_TREE_KEY ;
typedef TYPE_7__* PB_TREE_FILENAME_NODE ;
typedef TYPE_7__* PB_TREE ;
typedef int NTSTATUS ;
typedef int B_TREE_KEY ;
typedef int B_TREE_FILENAME_NODE ;
typedef int B_TREE ;


 int AttributeIndexAllocation ;
 void* CreateBTreeNodeFromIndexNode (int ,TYPE_5__*,TYPE_4__*,TYPE_11__*) ;
 int DPRINT (char*,TYPE_5__*,TYPE_7__**) ;
 int DPRINT1 (char*) ;
 int DestroyBTree (TYPE_7__*) ;
 void* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (TYPE_7__*,int ) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int FindAttribute (int ,int ,int ,char*,int,TYPE_4__**,int *) ;
 int Header ;
 int INDEX_ROOT_ATTRIBUTE ;
 int NTFS_INDEX_ENTRY_END ;
 int NTFS_INDEX_ENTRY_NODE ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int ReleaseAttributeContext (TYPE_4__*) ;
 int RtlCopyMemory (TYPE_11__*,TYPE_6__*,int) ;
 int RtlZeroMemory (TYPE_7__*,int) ;
 int STATUS_FILE_CORRUPT_ERROR ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_SUCCESS ;
 int TAG_NTFS ;

NTSTATUS
CreateBTreeFromIndex(PDEVICE_EXTENSION Vcb,
                     PFILE_RECORD_HEADER FileRecordWithIndex,

                     PNTFS_ATTR_CONTEXT IndexRootContext,
                     PINDEX_ROOT_ATTRIBUTE IndexRoot,
                     PB_TREE *NewTree)
{
    PINDEX_ENTRY_ATTRIBUTE CurrentNodeEntry;
    PB_TREE Tree = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE), TAG_NTFS);
    PB_TREE_FILENAME_NODE RootNode = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_FILENAME_NODE), TAG_NTFS);
    PB_TREE_KEY CurrentKey = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_KEY), TAG_NTFS);
    ULONG CurrentOffset = IndexRoot->Header.FirstEntryOffset;
    PNTFS_ATTR_CONTEXT IndexAllocationContext = ((void*)0);
    NTSTATUS Status;

    DPRINT("CreateBTreeFromIndex(%p, %p)\n", IndexRoot, NewTree);

    if (!Tree || !RootNode || !CurrentKey)
    {
        DPRINT1("Couldn't allocate enough memory for B-Tree!\n");
        if (Tree)
            ExFreePoolWithTag(Tree, TAG_NTFS);
        if (CurrentKey)
            ExFreePoolWithTag(CurrentKey, TAG_NTFS);
        if (RootNode)
            ExFreePoolWithTag(RootNode, TAG_NTFS);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    RtlZeroMemory(Tree, sizeof(B_TREE));
    RtlZeroMemory(RootNode, sizeof(B_TREE_FILENAME_NODE));
    RtlZeroMemory(CurrentKey, sizeof(B_TREE_KEY));


    Status = FindAttribute(Vcb,
                           FileRecordWithIndex,
                           AttributeIndexAllocation,
                           L"$I30",
                           4,
                           &IndexAllocationContext,
                           ((void*)0));
    if (!NT_SUCCESS(Status))
        IndexAllocationContext = ((void*)0);


    RootNode->FirstKey = CurrentKey;
    Tree->RootNode = RootNode;


    if (FIELD_OFFSET(INDEX_ROOT_ATTRIBUTE, Header) + IndexRoot->Header.TotalSizeOfEntries > IndexRootContext->pRecord->Resident.ValueLength)
    {
        DPRINT1("Filesystem corruption detected!\n");
        DestroyBTree(Tree);
        Status = STATUS_FILE_CORRUPT_ERROR;
        goto Cleanup;
    }


    CurrentNodeEntry = (PINDEX_ENTRY_ATTRIBUTE)((ULONG_PTR)IndexRoot
                                                + FIELD_OFFSET(INDEX_ROOT_ATTRIBUTE, Header)
                                                + IndexRoot->Header.FirstEntryOffset);


    while (CurrentOffset < IndexRoot->Header.TotalSizeOfEntries)
    {

        CurrentKey->IndexEntry = ExAllocatePoolWithTag(NonPagedPool, CurrentNodeEntry->Length, TAG_NTFS);
        if (!CurrentKey->IndexEntry)
        {
            DPRINT1("ERROR: Couldn't allocate memory for next key!\n");
            DestroyBTree(Tree);
            Status = STATUS_INSUFFICIENT_RESOURCES;
            goto Cleanup;
        }

        RootNode->KeyCount++;


        if (!(CurrentNodeEntry->Flags & NTFS_INDEX_ENTRY_END))
        {

            PB_TREE_KEY NextKey = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_KEY), TAG_NTFS);
            if (!NextKey)
            {
                DPRINT1("ERROR: Couldn't allocate memory for next key!\n");
                DestroyBTree(Tree);
                Status = STATUS_INSUFFICIENT_RESOURCES;
                goto Cleanup;
            }

            RtlZeroMemory(NextKey, sizeof(B_TREE_KEY));


            CurrentKey->NextKey = NextKey;


            RtlCopyMemory(CurrentKey->IndexEntry, CurrentNodeEntry, CurrentNodeEntry->Length);


            if (CurrentKey->IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE)
            {

                CurrentKey->LesserChild = CreateBTreeNodeFromIndexNode(Vcb,
                                                                       IndexRoot,
                                                                       IndexAllocationContext,
                                                                       CurrentKey->IndexEntry);
                if (!CurrentKey->LesserChild)
                {
                    DPRINT1("ERROR: Couldn't create child node!\n");
                    DestroyBTree(Tree);
                    Status = STATUS_NOT_IMPLEMENTED;
                    goto Cleanup;
                }
            }


            CurrentOffset += CurrentNodeEntry->Length;
            CurrentNodeEntry = (PINDEX_ENTRY_ATTRIBUTE)((ULONG_PTR)CurrentNodeEntry + CurrentNodeEntry->Length);
            CurrentKey = NextKey;
        }
        else
        {

            RtlCopyMemory(CurrentKey->IndexEntry, CurrentNodeEntry, CurrentNodeEntry->Length);
            CurrentKey->NextKey = ((void*)0);


            if (CurrentKey->IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE)
            {

                CurrentKey->LesserChild = CreateBTreeNodeFromIndexNode(Vcb,
                                                                       IndexRoot,
                                                                       IndexAllocationContext,
                                                                       CurrentKey->IndexEntry);
                if (!CurrentKey->LesserChild)
                {
                    DPRINT1("ERROR: Couldn't create child node!\n");
                    DestroyBTree(Tree);
                    Status = STATUS_NOT_IMPLEMENTED;
                    goto Cleanup;
                }
            }

            break;
        }
    }

    *NewTree = Tree;
    Status = STATUS_SUCCESS;

Cleanup:
    if (IndexAllocationContext)
        ReleaseAttributeContext(IndexAllocationContext);

    return Status;
}
