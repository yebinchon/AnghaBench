
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_5__ ;
typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_28__ {TYPE_4__* RootNode; } ;
struct TYPE_27__ {scalar_t__ KeyCount; TYPE_3__* FirstKey; void* DiskNeedsUpdating; } ;
struct TYPE_26__ {struct TYPE_26__* NextKey; TYPE_4__* LesserChild; TYPE_2__* IndexEntry; } ;
struct TYPE_24__ {int Name; int NameLength; } ;
struct TYPE_25__ {TYPE_1__ FileName; } ;
typedef int PFILENAME_ATTRIBUTE ;
typedef TYPE_3__* PB_TREE_KEY ;
typedef TYPE_4__* PB_TREE_FILENAME_NODE ;
typedef TYPE_5__* PB_TREE ;
typedef int NTSTATUS ;
typedef scalar_t__ LONG ;
typedef int BOOLEAN ;


 int ASSERT (int) ;
 scalar_t__ CompareTreeKeys (TYPE_3__*,TYPE_3__*,int ) ;
 TYPE_3__* CreateBTreeKeyFromFilename (int ,int ) ;
 int DPRINT (char*,TYPE_5__*,int ,int ,TYPE_4__*,char*,scalar_t__,scalar_t__,TYPE_3__**,TYPE_4__**) ;
 int DPRINT1 (char*,...) ;
 int DumpBTree (TYPE_5__*) ;
 int ExFreePoolWithTag (TYPE_3__*,int ) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 scalar_t__ GetSizeOfIndexEntries (TYPE_4__*) ;
 int Header ;
 int INDEX_BUFFER ;
 int NT_SUCCESS (int ) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int SplitBTreeNode (TYPE_5__*,TYPE_4__*,TYPE_3__**,TYPE_4__**,int ) ;
 int TAG_NTFS ;
 void* TRUE ;

NTSTATUS
NtfsInsertKey(PB_TREE Tree,
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

    *MedianKey = ((void*)0);
    *NewRightHandSibling = ((void*)0);

    DPRINT("NtfsInsertKey(%p, 0x%I64x, %p, %p, %s, %lu, %lu, %p, %p)\n",
           Tree,
           FileReference,
           FileNameAttribute,
           Node,
           CaseSensitive ? "TRUE" : "FALSE",
           MaxIndexRootSize,
           IndexRecordSize,
           MedianKey,
           NewRightHandSibling);


    NewKey = CreateBTreeKeyFromFilename(FileReference, FileNameAttribute);
    if (!NewKey)
        return STATUS_INSUFFICIENT_RESOURCES;


    CurrentKey = Node->FirstKey;
    PreviousKey = ((void*)0);
    for (i = 0; i < Node->KeyCount; i++)
    {

        LONG Comparison = CompareTreeKeys(NewKey, CurrentKey, CaseSensitive);

        if (Comparison == 0)
        {
            DPRINT1("\t\tComparison == 0: %.*S\n", NewKey->IndexEntry->FileName.NameLength, NewKey->IndexEntry->FileName.Name);
            DPRINT1("\t\tComparison == 0: %.*S\n", CurrentKey->IndexEntry->FileName.NameLength, CurrentKey->IndexEntry->FileName.Name);
        }
        ASSERT(Comparison != 0);


        if (Comparison < 0)
        {

            if (CurrentKey->LesserChild)
            {
                PB_TREE_KEY NewLeftKey;
                PB_TREE_FILENAME_NODE NewChild;


                Status = NtfsInsertKey(Tree,
                                       FileReference,
                                       FileNameAttribute,
                                       CurrentKey->LesserChild,
                                       CaseSensitive,
                                       MaxIndexRootSize,
                                       IndexRecordSize,
                                       &NewLeftKey,
                                       &NewChild);
                if (!NT_SUCCESS(Status))
                {
                    DPRINT1("ERROR: Failed to insert key.\n");
                    ExFreePoolWithTag(NewKey, TAG_NTFS);
                    return Status;
                }


                if (NewLeftKey)
                {
                    ASSERT(NewChild != ((void*)0));


                    NewLeftKey->NextKey = CurrentKey;


                    if (!PreviousKey)
                        Node->FirstKey = NewLeftKey;
                    else
                        PreviousKey->NextKey = NewLeftKey;


                    CurrentKey->LesserChild = NewChild;

                    Node->KeyCount++;
                    Node->DiskNeedsUpdating = TRUE;


                    DumpBTree(Tree);

                }
            }
            else
            {

                NewKey->NextKey = CurrentKey;


                Node->KeyCount++;
                Node->DiskNeedsUpdating = TRUE;


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


    NodeSize = GetSizeOfIndexEntries(Node);


    if (Node != Tree->RootNode)
    {

        AllocatedNodeSize = IndexRecordSize - FIELD_OFFSET(INDEX_BUFFER, Header);


        MaxNodeSizeWithoutHeader = AllocatedNodeSize - 0x28;


        if (NodeSize > MaxNodeSizeWithoutHeader)
        {
            NTSTATUS Status;

            Status = SplitBTreeNode(Tree, Node, MedianKey, NewRightHandSibling, CaseSensitive);
            if (!NT_SUCCESS(Status))
            {
                DPRINT1("ERROR: Failed to split B-Tree node!\n");
                return Status;
            }

            return Status;
        }
    }



    return Status;
}
