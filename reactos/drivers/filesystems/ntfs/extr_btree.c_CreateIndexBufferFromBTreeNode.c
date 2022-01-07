
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_18__ {scalar_t__ Length; } ;
struct TYPE_17__ {int HasValidVCN; scalar_t__ KeyCount; TYPE_4__* FirstKey; int VCN; } ;
struct TYPE_16__ {struct TYPE_16__* NextKey; TYPE_8__* IndexEntry; } ;
struct TYPE_12__ {int UsaOffset; int UsaCount; int Type; } ;
struct TYPE_13__ {int FirstEntryOffset; int TotalSizeOfEntries; int Flags; scalar_t__ AllocatedSize; } ;
struct TYPE_15__ {TYPE_11__ Ntfs; TYPE_1__ Header; int VCN; } ;
struct TYPE_14__ {scalar_t__ Length; int KeyLength; } ;
typedef TYPE_2__* PINDEX_ENTRY_ATTRIBUTE ;
typedef TYPE_3__* PINDEX_BUFFER ;
typedef int PDEVICE_EXTENSION ;
typedef TYPE_4__* PB_TREE_KEY ;
typedef TYPE_5__* PB_TREE_FILENAME_NODE ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (int) ;
 int AddFixupArray (int ,TYPE_11__*) ;
 int DPRINT (char*,int ,scalar_t__) ;
 int DPRINT1 (char*) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int Header ;
 int INDEX_BUFFER ;
 int INDEX_NODE_LARGE ;
 int NRH_INDX_TYPE ;
 int RtlCopyMemory (TYPE_2__*,TYPE_8__*,scalar_t__) ;
 int RtlZeroMemory (TYPE_3__*,scalar_t__) ;
 int STATUS_NOT_IMPLEMENTED ;

NTSTATUS
CreateIndexBufferFromBTreeNode(PDEVICE_EXTENSION DeviceExt,
                               PB_TREE_FILENAME_NODE Node,
                               ULONG BufferSize,
                               BOOLEAN HasChildren,
                               PINDEX_BUFFER IndexBuffer)
{
    ULONG i;
    PB_TREE_KEY CurrentKey;
    PINDEX_ENTRY_ATTRIBUTE CurrentNodeEntry;
    NTSTATUS Status;


    RtlZeroMemory(IndexBuffer, BufferSize);
    IndexBuffer->Ntfs.Type = NRH_INDX_TYPE;
    IndexBuffer->Ntfs.UsaOffset = 0x28;
    IndexBuffer->Ntfs.UsaCount = 9;


    ASSERT(Node->HasValidVCN);
    IndexBuffer->VCN = Node->VCN;



    IndexBuffer->Header.FirstEntryOffset = 0x28;
    IndexBuffer->Header.AllocatedSize = BufferSize - FIELD_OFFSET(INDEX_BUFFER, Header);


    IndexBuffer->Header.TotalSizeOfEntries = IndexBuffer->Header.FirstEntryOffset;

    CurrentKey = Node->FirstKey;
    CurrentNodeEntry = (PINDEX_ENTRY_ATTRIBUTE)((ULONG_PTR)&(IndexBuffer->Header)
                                                + IndexBuffer->Header.FirstEntryOffset);
    for (i = 0; i < Node->KeyCount; i++)
    {

        ULONG IndexSize = FIELD_OFFSET(INDEX_BUFFER, Header)
            + IndexBuffer->Header.TotalSizeOfEntries
            + CurrentNodeEntry->Length;
        if (IndexSize > BufferSize)
        {
            DPRINT1("TODO: Adding file would require creating a new node!\n");
            return STATUS_NOT_IMPLEMENTED;
        }

        ASSERT(CurrentKey->IndexEntry->Length != 0);


        RtlCopyMemory(CurrentNodeEntry, CurrentKey->IndexEntry, CurrentKey->IndexEntry->Length);

        DPRINT("Index Node Entry Stream Length: %u\nIndex Node Entry Length: %u\n",
               CurrentNodeEntry->KeyLength,
               CurrentNodeEntry->Length);


        IndexBuffer->Header.TotalSizeOfEntries += CurrentNodeEntry->Length;


        if (HasChildren)
            IndexBuffer->Header.Flags = INDEX_NODE_LARGE;


        CurrentNodeEntry = (PINDEX_ENTRY_ATTRIBUTE)((ULONG_PTR)CurrentNodeEntry + CurrentNodeEntry->Length);
        CurrentKey = CurrentKey->NextKey;
    }

    Status = AddFixupArray(DeviceExt, &IndexBuffer->Ntfs);

    return Status;
}
