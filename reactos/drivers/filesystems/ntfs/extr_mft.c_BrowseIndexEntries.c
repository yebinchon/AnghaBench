
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_6__ ;
typedef struct TYPE_24__ TYPE_5__ ;
typedef struct TYPE_23__ TYPE_4__ ;
typedef struct TYPE_22__ TYPE_3__ ;
typedef struct TYPE_21__ TYPE_2__ ;
typedef struct TYPE_20__ TYPE_1__ ;


typedef int ULONG_PTR ;
typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_22__ {int IndexedFile; } ;
struct TYPE_23__ {TYPE_3__ Directory; } ;
struct TYPE_21__ {scalar_t__ NameType; } ;
struct TYPE_26__ {int Flags; int Length; TYPE_4__ Data; TYPE_2__ FileName; } ;
struct TYPE_20__ {int Flags; } ;
struct TYPE_25__ {TYPE_1__ Header; } ;
struct TYPE_24__ {int pRecord; } ;
typedef int RTL_BITMAP ;
typedef int PUNICODE_STRING ;
typedef scalar_t__* PULONG ;
typedef TYPE_5__* PNTFS_ATTR_CONTEXT ;
typedef TYPE_6__* PINDEX_ROOT_ATTRIBUTE ;
typedef TYPE_7__* PINDEX_ENTRY_ATTRIBUTE ;
typedef int PFILE_RECORD_HEADER ;
typedef int PDEVICE_EXTENSION ;
typedef scalar_t__ PCHAR ;
typedef int NTSTATUS ;
typedef int INDEX_ENTRY_ATTRIBUTE ;
typedef int BOOLEAN ;


 scalar_t__ ALIGN_UP_BY (int ,int) ;
 int ASSERT (int) ;
 int AttributeBitmap ;
 int AttributeDataLength (int ) ;
 int AttributeIndexAllocation ;
 int BrowseSubNodeIndexEntries (int ,int ,scalar_t__,int ,TYPE_5__*,int *,int ,scalar_t__*,scalar_t__*,int ,int ,int*) ;
 scalar_t__ CompareFileName (int ,TYPE_7__*,int ,int ) ;
 int DPRINT (char*,int ,int ,TYPE_6__*,scalar_t__,TYPE_7__*,TYPE_7__*,int ,scalar_t__,scalar_t__,char*,char*,int*) ;
 int DPRINT1 (char*) ;
 scalar_t__* ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (scalar_t__*,int ) ;
 int FindAttribute (int ,int ,int ,char*,int,TYPE_5__**,int *) ;
 int GetIndexEntryVCN (TYPE_7__*) ;
 int INDEX_ROOT_LARGE ;
 int NTFS_FILE_FIRST_USER_FILE ;
 scalar_t__ NTFS_FILE_NAME_DOS ;
 int NTFS_INDEX_ENTRY_END ;
 int NTFS_INDEX_ENTRY_NODE ;
 int NTFS_MFT_MASK ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int ReadAttribute (int ,TYPE_5__*,int ,scalar_t__,int) ;
 int ReleaseAttributeContext (TYPE_5__*) ;
 int RtlInitializeBitMap (int *,scalar_t__*,int) ;
 int RtlZeroMemory (scalar_t__*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_OBJECT_PATH_NOT_FOUND ;
 int STATUS_SUCCESS ;
 int TAG_NTFS ;

NTSTATUS
BrowseIndexEntries(PDEVICE_EXTENSION Vcb,
                   PFILE_RECORD_HEADER MftRecord,
                   PINDEX_ROOT_ATTRIBUTE IndexRecord,
                   ULONG IndexBlockSize,
                   PINDEX_ENTRY_ATTRIBUTE FirstEntry,
                   PINDEX_ENTRY_ATTRIBUTE LastEntry,
                   PUNICODE_STRING FileName,
                   PULONG StartEntry,
                   PULONG CurrentEntry,
                   BOOLEAN DirSearch,
                   BOOLEAN CaseSensitive,
                   ULONGLONG *OutMFTIndex)
{
    NTSTATUS Status;
    PINDEX_ENTRY_ATTRIBUTE IndexEntry;
    PNTFS_ATTR_CONTEXT IndexAllocationContext;
    PNTFS_ATTR_CONTEXT BitmapContext;
    PCHAR *BitmapMem;
    ULONG *BitmapPtr;
    RTL_BITMAP Bitmap;

    DPRINT("BrowseIndexEntries(%p, %p, %p, %lu, %p, %p, %wZ, %lu, %lu, %s, %s, %p)\n",
           Vcb,
           MftRecord,
           IndexRecord,
           IndexBlockSize,
           FirstEntry,
           LastEntry,
           FileName,
           *StartEntry,
           *CurrentEntry,
           DirSearch ? "TRUE" : "FALSE",
           CaseSensitive ? "TRUE" : "FALSE",
           OutMFTIndex);


    Status = FindAttribute(Vcb, MftRecord, AttributeIndexAllocation, L"$I30", 4, &IndexAllocationContext, ((void*)0));
    if (NT_SUCCESS(Status))
    {
        ULONGLONG BitmapLength;

        Status = FindAttribute(Vcb, MftRecord, AttributeBitmap, L"$I30", 4, &BitmapContext, ((void*)0));
        if (!NT_SUCCESS(Status))
        {
            DPRINT1("Potential file system corruption detected!\n");
            ReleaseAttributeContext(IndexAllocationContext);
            return Status;
        }


        BitmapLength = AttributeDataLength(BitmapContext->pRecord);



        BitmapMem = ExAllocatePoolWithTag(NonPagedPool, BitmapLength + sizeof(ULONG), TAG_NTFS);
        if (!BitmapMem)
        {
            DPRINT1("Error: failed to allocate bitmap!");
            ReleaseAttributeContext(BitmapContext);
            ReleaseAttributeContext(IndexAllocationContext);
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        RtlZeroMemory(BitmapMem, BitmapLength + sizeof(ULONG));


        BitmapPtr = (PULONG)ALIGN_UP_BY((ULONG_PTR)BitmapMem, sizeof(ULONG));


        Status = ReadAttribute(Vcb, BitmapContext, 0, (PCHAR)BitmapPtr, BitmapLength);
        if (!NT_SUCCESS(Status))
        {
            DPRINT1("ERROR: Failed to read bitmap attribute!\n");
            ExFreePoolWithTag(BitmapMem, TAG_NTFS);
            ReleaseAttributeContext(BitmapContext);
            ReleaseAttributeContext(IndexAllocationContext);
            return Status;
        }


        RtlInitializeBitMap(&Bitmap, BitmapPtr, BitmapLength * 8);
    }
    else
    {

        IndexAllocationContext = ((void*)0);
    }



    IndexEntry = FirstEntry;
    while (IndexEntry <= LastEntry)
    {

        if (IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE)
        {
            if (!(IndexRecord->Header.Flags & INDEX_ROOT_LARGE) || !IndexAllocationContext)
            {
                DPRINT1("Filesystem corruption detected!\n");
            }
            else
            {
                Status = BrowseSubNodeIndexEntries(Vcb,
                                                   MftRecord,
                                                   IndexBlockSize,
                                                   FileName,
                                                   IndexAllocationContext,
                                                   &Bitmap,
                                                   GetIndexEntryVCN(IndexEntry),
                                                   StartEntry,
                                                   CurrentEntry,
                                                   DirSearch,
                                                   CaseSensitive,
                                                   OutMFTIndex);
                if (NT_SUCCESS(Status))
                {
                    ExFreePoolWithTag(BitmapMem, TAG_NTFS);
                    ReleaseAttributeContext(BitmapContext);
                    ReleaseAttributeContext(IndexAllocationContext);
                    return Status;
                }
            }
        }


        if (IndexEntry->Flags & NTFS_INDEX_ENTRY_END)
            break;


        if ((IndexEntry->Data.Directory.IndexedFile & NTFS_MFT_MASK) >= NTFS_FILE_FIRST_USER_FILE &&
            *CurrentEntry >= *StartEntry &&
            IndexEntry->FileName.NameType != NTFS_FILE_NAME_DOS &&
            CompareFileName(FileName, IndexEntry, DirSearch, CaseSensitive))
        {
            *StartEntry = *CurrentEntry;
            *OutMFTIndex = (IndexEntry->Data.Directory.IndexedFile & NTFS_MFT_MASK);
            if (IndexAllocationContext)
            {
                ExFreePoolWithTag(BitmapMem, TAG_NTFS);
                ReleaseAttributeContext(BitmapContext);
                ReleaseAttributeContext(IndexAllocationContext);
            }
            return STATUS_SUCCESS;
        }


        (*CurrentEntry) += 1;
        ASSERT(IndexEntry->Length >= sizeof(INDEX_ENTRY_ATTRIBUTE));
        IndexEntry = (PINDEX_ENTRY_ATTRIBUTE)((PCHAR)IndexEntry + IndexEntry->Length);
    }

    if (IndexAllocationContext)
    {
        ExFreePoolWithTag(BitmapMem, TAG_NTFS);
        ReleaseAttributeContext(BitmapContext);
        ReleaseAttributeContext(IndexAllocationContext);
    }

    return STATUS_OBJECT_PATH_NOT_FOUND;
}
