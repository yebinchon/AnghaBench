
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_28__ {int VCN; } ;
struct TYPE_27__ {TYPE_1__* RootNode; } ;
struct TYPE_26__ {struct TYPE_26__* NextKey; TYPE_8__* LesserChild; TYPE_3__* IndexEntry; } ;
struct TYPE_25__ {scalar_t__ BytesInUse; } ;
struct TYPE_24__ {int Length; int Flags; } ;
struct TYPE_23__ {scalar_t__ Length; } ;
struct TYPE_22__ {scalar_t__ KeyCount; TYPE_5__* FirstKey; } ;
typedef TYPE_2__* PNTFS_ATTR_RECORD ;
typedef int PNTFS_ATTR_CONTEXT ;
typedef TYPE_3__* PINDEX_ENTRY_ATTRIBUTE ;
typedef TYPE_4__* PFILE_RECORD_HEADER ;
typedef int PDEVICE_EXTENSION ;
typedef TYPE_5__* PB_TREE_KEY ;
typedef TYPE_6__* PB_TREE ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int AddBitmap (int ,TYPE_4__*,TYPE_2__*,char*,int) ;
 int AddIndexAllocation (int ,TYPE_4__*,TYPE_2__*,char*,int) ;
 int AttributeIndexAllocation ;
 int BooleanFlagOn (int ,int ) ;
 int DPRINT (char*) ;
 int DPRINT1 (char*) ;
 int DumpBTree (TYPE_6__*) ;
 TYPE_3__* ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (TYPE_3__*,int ) ;
 scalar_t__ FALSE ;
 int FindAttribute (int ,TYPE_4__*,int ,char*,int,int *,scalar_t__*) ;
 int NTFS_INDEX_ENTRY_NODE ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int PrintAllVCNs (int ,int ,scalar_t__) ;
 int ReleaseAttributeContext (int ) ;
 int RtlCopyMemory (TYPE_3__*,TYPE_3__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int SetIndexEntryVCN (TYPE_3__*,int ) ;
 int TAG_NTFS ;
 scalar_t__ TRUE ;
 int UpdateIndexNode (int ,TYPE_4__*,TYPE_8__*,scalar_t__,int ,scalar_t__) ;

NTSTATUS
UpdateIndexAllocation(PDEVICE_EXTENSION DeviceExt,
                      PB_TREE Tree,
                      ULONG IndexBufferSize,
                      PFILE_RECORD_HEADER FileRecord)
{

    PNTFS_ATTR_CONTEXT IndexAllocationContext;
    PB_TREE_KEY CurrentKey;
    NTSTATUS Status;
    BOOLEAN HasIndexAllocation = FALSE;
    ULONG i;
    ULONG IndexAllocationOffset;

    DPRINT("UpdateIndexAllocation() called.\n");

    Status = FindAttribute(DeviceExt, FileRecord, AttributeIndexAllocation, L"$I30", 4, &IndexAllocationContext, &IndexAllocationOffset);
    if (NT_SUCCESS(Status))
    {
        HasIndexAllocation = TRUE;


        PrintAllVCNs(DeviceExt,
                     IndexAllocationContext,
                     IndexBufferSize);

    }

    CurrentKey = Tree->RootNode->FirstKey;
    for (i = 0; i < Tree->RootNode->KeyCount; i++)
    {
        if (CurrentKey->LesserChild)
        {
            if (!HasIndexAllocation)
            {

                PNTFS_ATTR_RECORD EndMarker = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + FileRecord->BytesInUse - (sizeof(ULONG) * 2));
                DPRINT1("Adding index allocation...\n");


                Status = AddIndexAllocation(DeviceExt,
                                            FileRecord,
                                            EndMarker,
                                            L"$I30",
                                            4);
                if (!NT_SUCCESS(Status))
                {
                    DPRINT1("ERROR: Failed to add index allocation!\n");
                    return Status;
                }


                Status = FindAttribute(DeviceExt, FileRecord, AttributeIndexAllocation, L"$I30", 4, &IndexAllocationContext, &IndexAllocationOffset);
                if (!NT_SUCCESS(Status))
                {
                    DPRINT1("ERROR: Couldn't find newly-created index allocation!\n");
                    return Status;
                }


                EndMarker = (PNTFS_ATTR_RECORD)((ULONG_PTR)EndMarker + EndMarker->Length);


                Status = AddBitmap(DeviceExt,
                                   FileRecord,
                                   EndMarker,
                                   L"$I30",
                                   4);
                if (!NT_SUCCESS(Status))
                {
                    DPRINT1("ERROR: Failed to add index bitmap!\n");
                    ReleaseAttributeContext(IndexAllocationContext);
                    return Status;
                }

                HasIndexAllocation = TRUE;
            }


            if (!BooleanFlagOn(CurrentKey->IndexEntry->Flags, NTFS_INDEX_ENTRY_NODE))
            {

                PINDEX_ENTRY_ATTRIBUTE NewEntry = ExAllocatePoolWithTag(NonPagedPool,
                                                                        CurrentKey->IndexEntry->Length + sizeof(ULONGLONG),
                                                                        TAG_NTFS);
                if (!NewEntry)
                {
                    DPRINT1("ERROR: Unable to allocate memory for new index entry!\n");
                    if (HasIndexAllocation)
                        ReleaseAttributeContext(IndexAllocationContext);
                    return STATUS_INSUFFICIENT_RESOURCES;
                }


                RtlCopyMemory(NewEntry, CurrentKey->IndexEntry, CurrentKey->IndexEntry->Length);

                NewEntry->Length += sizeof(ULONGLONG);


                ExFreePoolWithTag(CurrentKey->IndexEntry, TAG_NTFS);

                CurrentKey->IndexEntry = NewEntry;
                CurrentKey->IndexEntry->Flags |= NTFS_INDEX_ENTRY_NODE;
            }


            Status = UpdateIndexNode(DeviceExt, FileRecord, CurrentKey->LesserChild, IndexBufferSize, IndexAllocationContext, IndexAllocationOffset);
            if (!NT_SUCCESS(Status))
            {
                DPRINT1("ERROR: Failed to update index node!\n");
                ReleaseAttributeContext(IndexAllocationContext);
                return Status;
            }


            SetIndexEntryVCN(CurrentKey->IndexEntry, CurrentKey->LesserChild->VCN);
        }
        CurrentKey = CurrentKey->NextKey;
    }


    DumpBTree(Tree);


    if (HasIndexAllocation)
    {

        PrintAllVCNs(DeviceExt,
                     IndexAllocationContext,
                     IndexBufferSize);

        ReleaseAttributeContext(IndexAllocationContext);
    }

    return STATUS_SUCCESS;
}
