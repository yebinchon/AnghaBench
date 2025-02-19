
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_16__ {scalar_t__ KeyCount; void* DiskNeedsUpdating; int VCN; void* HasValidVCN; TYPE_3__* FirstKey; } ;
struct TYPE_15__ {struct TYPE_15__* NextKey; TYPE_1__* IndexEntry; TYPE_4__* LesserChild; } ;
struct TYPE_14__ {int Length; int Flags; } ;
typedef int PUCHAR ;
typedef int PNTFS_ATTR_CONTEXT ;
typedef TYPE_1__* PINDEX_ENTRY_ATTRIBUTE ;
typedef TYPE_1__* PINDEX_BUFFER ;
typedef int PFILE_RECORD_HEADER ;
typedef int PDEVICE_EXTENSION ;
typedef TYPE_3__* PB_TREE_KEY ;
typedef TYPE_4__* PB_TREE_FILENAME_NODE ;
typedef int NTSTATUS ;
typedef void* BOOLEAN ;


 int ASSERT (TYPE_3__*) ;
 int AllocateIndexNode (int ,int ,scalar_t__,int ,scalar_t__,int *) ;
 int BooleanFlagOn (int ,int ) ;
 int CreateIndexBufferFromBTreeNode (int ,TYPE_4__*,scalar_t__,void*,TYPE_1__*) ;
 int DPRINT (char*,int ,int ,TYPE_4__*,scalar_t__,int ,scalar_t__,int ) ;
 int DPRINT1 (char*,...) ;
 void* ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int ExFreePoolWithTag (TYPE_1__*,int ) ;
 void* FALSE ;
 int GetAllocationOffsetFromVCN (int ,scalar_t__,int ) ;
 int NTFS_INDEX_ENTRY_NODE ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int RtlCopyMemory (TYPE_1__*,TYPE_1__*,int) ;
 int STATUS_END_OF_FILE ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int SetIndexEntryVCN (TYPE_1__*,int ) ;
 int TAG_NTFS ;
 void* TRUE ;
 int WriteAttribute (int ,int ,int ,int const,scalar_t__,scalar_t__*,int ) ;

NTSTATUS
UpdateIndexNode(PDEVICE_EXTENSION DeviceExt,
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


    DPRINT("UpdateIndexNode(%p, %p, %p, %lu, %p, %lu) called for index node with VCN %I64u\n",
           DeviceExt,
           FileRecord,
           Node,
           IndexBufferSize,
           IndexAllocationContext,
           IndexAllocationOffset,
           Node->VCN);


    for (i = 0; i < Node->KeyCount; i++)
    {
        ASSERT(CurrentKey);


        if (CurrentKey->LesserChild)
        {
            HasChildren = TRUE;


            Status = UpdateIndexNode(DeviceExt, FileRecord, CurrentKey->LesserChild, IndexBufferSize, IndexAllocationContext, IndexAllocationOffset);
            if (!NT_SUCCESS(Status))
            {
                DPRINT1("ERROR: Failed to update child node!\n");
                return Status;
            }


            if (!BooleanFlagOn(CurrentKey->IndexEntry->Flags, NTFS_INDEX_ENTRY_NODE))
            {

                PINDEX_ENTRY_ATTRIBUTE NewEntry = ExAllocatePoolWithTag(NonPagedPool,
                                                                        CurrentKey->IndexEntry->Length + sizeof(ULONGLONG),
                                                                        TAG_NTFS);
                if (!NewEntry)
                {
                    DPRINT1("ERROR: Unable to allocate memory for new index entry!\n");
                    return STATUS_INSUFFICIENT_RESOURCES;
                }


                RtlCopyMemory(NewEntry, CurrentKey->IndexEntry, CurrentKey->IndexEntry->Length);

                NewEntry->Length += sizeof(ULONGLONG);


                ExFreePoolWithTag(CurrentKey->IndexEntry, TAG_NTFS);

                CurrentKey->IndexEntry = NewEntry;
            }


            SetIndexEntryVCN(CurrentKey->IndexEntry, CurrentKey->LesserChild->VCN);

            CurrentKey->IndexEntry->Flags |= NTFS_INDEX_ENTRY_NODE;
        }

        CurrentKey = CurrentKey->NextKey;
    }



    if (Node->DiskNeedsUpdating)
    {
        ULONGLONG NodeOffset;
        ULONG LengthWritten;
        PINDEX_BUFFER IndexBuffer;


        if (!Node->HasValidVCN)
        {

            Status = AllocateIndexNode(DeviceExt,
                                       FileRecord,
                                       IndexBufferSize,
                                       IndexAllocationContext,
                                       IndexAllocationOffset,
                                       &Node->VCN);
            if (!NT_SUCCESS(Status))
            {
                DPRINT1("ERROR: Failed to allocate index record in index allocation!\n");
                return Status;
            }

            Node->HasValidVCN = TRUE;
        }


        IndexBuffer = ExAllocatePoolWithTag(NonPagedPool, IndexBufferSize, TAG_NTFS);
        if (!IndexBuffer)
        {
            DPRINT1("ERROR: Failed to allocate %lu bytes for index buffer!\n", IndexBufferSize);
            return STATUS_INSUFFICIENT_RESOURCES;
        }


        Status = CreateIndexBufferFromBTreeNode(DeviceExt, Node, IndexBufferSize, HasChildren, IndexBuffer);
        if (!NT_SUCCESS(Status))
        {
            DPRINT1("ERROR: Failed to create index buffer from node!\n");
            ExFreePoolWithTag(IndexBuffer, TAG_NTFS);
            return Status;
        }


        NodeOffset = GetAllocationOffsetFromVCN(DeviceExt, IndexBufferSize, Node->VCN);


        Status = WriteAttribute(DeviceExt, IndexAllocationContext, NodeOffset, (const PUCHAR)IndexBuffer, IndexBufferSize, &LengthWritten, FileRecord);
        if (!NT_SUCCESS(Status) || LengthWritten != IndexBufferSize)
        {
            DPRINT1("ERROR: Failed to update index allocation!\n");
            ExFreePoolWithTag(IndexBuffer, TAG_NTFS);
            if (!NT_SUCCESS(Status))
                return Status;
            else
                return STATUS_END_OF_FILE;
        }

        Node->DiskNeedsUpdating = FALSE;


        ExFreePoolWithTag(IndexBuffer, TAG_NTFS);
    }

    return STATUS_SUCCESS;
}
