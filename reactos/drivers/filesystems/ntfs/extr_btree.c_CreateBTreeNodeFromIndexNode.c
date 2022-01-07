
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_14__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_21__ {scalar_t__ BytesPerIndexRecord; } ;
struct TYPE_25__ {TYPE_1__ NtfsInfo; } ;
struct TYPE_22__ {scalar_t__ TotalSizeOfEntries; scalar_t__ FirstEntryOffset; } ;
struct TYPE_20__ {scalar_t__ Type; } ;
struct TYPE_24__ {scalar_t__ VCN; int HasValidVCN; TYPE_3__* IndexEntry; struct TYPE_24__* LesserChild; struct TYPE_24__* NextKey; int KeyCount; TYPE_2__ Header; TYPE_14__ Ntfs; struct TYPE_24__* FirstKey; } ;
struct TYPE_23__ {int Length; int Flags; } ;
typedef scalar_t__* PULONGLONG ;
typedef int * PNTFS_ATTR_CONTEXT ;
typedef int PINDEX_ROOT_ATTRIBUTE ;
typedef TYPE_3__* PINDEX_ENTRY_ATTRIBUTE ;
typedef TYPE_4__* PINDEX_BUFFER ;
typedef TYPE_5__* PDEVICE_EXTENSION ;
typedef int PCHAR ;
typedef TYPE_4__* PB_TREE_KEY ;
typedef TYPE_4__* PB_TREE_FILENAME_NODE ;
typedef int NTSTATUS ;
typedef int B_TREE_KEY ;
typedef int B_TREE_FILENAME_NODE ;


 int ASSERT (int) ;
 int DPRINT1 (char*) ;
 int DestroyBTreeNode (TYPE_4__*) ;
 void* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (TYPE_4__*,int ) ;
 int FixupUpdateSequenceArray (TYPE_5__*,TYPE_14__*) ;
 int GetAllocationOffsetFromVCN (TYPE_5__*,scalar_t__,scalar_t__) ;
 scalar_t__ NRH_INDX_TYPE ;
 int NTFS_INDEX_ENTRY_END ;
 int NTFS_INDEX_ENTRY_NODE ;
 int NT_ASSERT (int) ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 scalar_t__ ReadAttribute (TYPE_5__*,int *,int ,int ,scalar_t__) ;
 int RtlCopyMemory (TYPE_3__*,TYPE_3__*,int) ;
 int RtlZeroMemory (TYPE_4__*,int) ;
 int TAG_NTFS ;
 int TRUE ;

PB_TREE_FILENAME_NODE
CreateBTreeNodeFromIndexNode(PDEVICE_EXTENSION Vcb,
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

    if (IndexAllocationAttributeCtx == ((void*)0))
    {
        DPRINT1("ERROR: Couldn't find index allocation attribute even though there should be one!\n");
        return ((void*)0);
    }


    VCN = (PULONGLONG)((ULONG_PTR)NodeEntry + NodeEntry->Length - sizeof(ULONGLONG));


    NewNode = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_FILENAME_NODE), TAG_NTFS);
    if (!NewNode)
    {
        DPRINT1("ERROR: Couldn't allocate memory for new filename node.\n");
        return ((void*)0);
    }
    RtlZeroMemory(NewNode, sizeof(B_TREE_FILENAME_NODE));


    CurrentKey = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_KEY), TAG_NTFS);
    if (!CurrentKey)
    {
        DPRINT1("ERROR: Failed to allocate memory for key!\n");
        ExFreePoolWithTag(NewNode, TAG_NTFS);
        return ((void*)0);
    }
    RtlZeroMemory(CurrentKey, sizeof(B_TREE_KEY));
    NewNode->FirstKey = CurrentKey;


    NodeBuffer = ExAllocatePoolWithTag(NonPagedPool, IndexBufferSize, TAG_NTFS);
    if (!NodeBuffer)
    {
        DPRINT1("ERROR: Couldn't allocate memory for node buffer!\n");
        ExFreePoolWithTag(CurrentKey, TAG_NTFS);
        ExFreePoolWithTag(NewNode, TAG_NTFS);
        return ((void*)0);
    }


    IndexNodeOffset = GetAllocationOffsetFromVCN(Vcb, IndexBufferSize, *VCN);




    BytesRead = ReadAttribute(Vcb,
                              IndexAllocationAttributeCtx,
                              IndexNodeOffset,
                              (PCHAR)NodeBuffer,
                              IndexBufferSize);

    ASSERT(BytesRead == IndexBufferSize);
    NT_ASSERT(NodeBuffer->Ntfs.Type == NRH_INDX_TYPE);
    NT_ASSERT(NodeBuffer->VCN == *VCN);


    Status = FixupUpdateSequenceArray(Vcb, &NodeBuffer->Ntfs);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Couldn't apply fixup array to index node buffer!\n");
        ExFreePoolWithTag(NodeBuffer, TAG_NTFS);
        ExFreePoolWithTag(CurrentKey, TAG_NTFS);
        ExFreePoolWithTag(NewNode, TAG_NTFS);
        return ((void*)0);
    }


    FirstNodeEntry = (PINDEX_ENTRY_ATTRIBUTE)((ULONG_PTR)(&NodeBuffer->Header)
                                               + NodeBuffer->Header.FirstEntryOffset);
    CurrentNodeEntry = FirstNodeEntry;
    while (CurrentEntryOffset < NodeBuffer->Header.TotalSizeOfEntries)
    {

        CurrentKey->IndexEntry = ExAllocatePoolWithTag(NonPagedPool, CurrentNodeEntry->Length, TAG_NTFS);
        if (!CurrentKey->IndexEntry)
        {
            DPRINT1("ERROR: Couldn't allocate memory for next key!\n");
            DestroyBTreeNode(NewNode);
            ExFreePoolWithTag(NodeBuffer, TAG_NTFS);
            return ((void*)0);
        }

        NewNode->KeyCount++;


        if (!(CurrentNodeEntry->Flags & NTFS_INDEX_ENTRY_END))
        {

            PB_TREE_KEY NextKey = ExAllocatePoolWithTag(NonPagedPool, sizeof(B_TREE_KEY), TAG_NTFS);
            if (!NextKey)
            {
                DPRINT1("ERROR: Couldn't allocate memory for next key!\n");
                DestroyBTreeNode(NewNode);
                ExFreePoolWithTag(NodeBuffer, TAG_NTFS);
                return ((void*)0);
            }
            RtlZeroMemory(NextKey, sizeof(B_TREE_KEY));


            CurrentKey->NextKey = NextKey;


            RtlCopyMemory(CurrentKey->IndexEntry, CurrentNodeEntry, CurrentNodeEntry->Length);


            if (CurrentKey->IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE)
            {
                CurrentKey->LesserChild = CreateBTreeNodeFromIndexNode(Vcb,
                                                                       IndexRoot,
                                                                       IndexAllocationAttributeCtx,
                                                                       CurrentKey->IndexEntry);
            }

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
                                                                       IndexAllocationAttributeCtx,
                                                                       CurrentKey->IndexEntry);
            }

            break;
        }


        CurrentEntryOffset += CurrentNodeEntry->Length;
        CurrentNodeEntry = (PINDEX_ENTRY_ATTRIBUTE)((ULONG_PTR)CurrentNodeEntry + CurrentNodeEntry->Length);
    }

    NewNode->VCN = *VCN;
    NewNode->HasValidVCN = TRUE;

    ExFreePoolWithTag(NodeBuffer, TAG_NTFS);

    return NewNode;
}
