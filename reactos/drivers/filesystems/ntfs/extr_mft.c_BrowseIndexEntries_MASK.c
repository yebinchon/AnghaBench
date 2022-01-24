#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_7__ ;
typedef  struct TYPE_25__   TYPE_6__ ;
typedef  struct TYPE_24__   TYPE_5__ ;
typedef  struct TYPE_23__   TYPE_4__ ;
typedef  struct TYPE_22__   TYPE_3__ ;
typedef  struct TYPE_21__   TYPE_2__ ;
typedef  struct TYPE_20__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_22__ {int IndexedFile; } ;
struct TYPE_23__ {TYPE_3__ Directory; } ;
struct TYPE_21__ {scalar_t__ NameType; } ;
struct TYPE_26__ {int Flags; int Length; TYPE_4__ Data; TYPE_2__ FileName; } ;
struct TYPE_20__ {int Flags; } ;
struct TYPE_25__ {TYPE_1__ Header; } ;
struct TYPE_24__ {int /*<<< orphan*/  pRecord; } ;
typedef  int /*<<< orphan*/  RTL_BITMAP ;
typedef  int /*<<< orphan*/  PUNICODE_STRING ;
typedef  scalar_t__* PULONG ;
typedef  TYPE_5__* PNTFS_ATTR_CONTEXT ;
typedef  TYPE_6__* PINDEX_ROOT_ATTRIBUTE ;
typedef  TYPE_7__* PINDEX_ENTRY_ATTRIBUTE ;
typedef  int /*<<< orphan*/  PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  PDEVICE_EXTENSION ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  INDEX_ENTRY_ATTRIBUTE ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  AttributeBitmap ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AttributeIndexAllocation ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_6__*,scalar_t__,TYPE_7__*,TYPE_7__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 scalar_t__* FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_7__*) ; 
 int INDEX_ROOT_LARGE ; 
 int NTFS_FILE_FIRST_USER_FILE ; 
 scalar_t__ NTFS_FILE_NAME_DOS ; 
 int NTFS_INDEX_ENTRY_END ; 
 int NTFS_INDEX_ENTRY_NODE ; 
 int NTFS_MFT_MASK ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_OBJECT_PATH_NOT_FOUND ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_NTFS ; 

NTSTATUS
FUNC16(PDEVICE_EXTENSION Vcb,
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
    RTL_BITMAP  Bitmap;

    FUNC5("BrowseIndexEntries(%p, %p, %p, %lu, %p, %p, %wZ, %lu, %lu, %s, %s, %p)\n",
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

    // Find the $I30 index allocation, if there is one
    Status = FUNC9(Vcb, MftRecord, AttributeIndexAllocation, L"$I30", 4, &IndexAllocationContext, NULL);
    if (FUNC11(Status))
    {
        ULONGLONG BitmapLength;
        // Find the bitmap attribute for the index
        Status = FUNC9(Vcb, MftRecord, AttributeBitmap, L"$I30", 4, &BitmapContext, NULL);
        if (!FUNC11(Status))
        {
            FUNC6("Potential file system corruption detected!\n");
            FUNC13(IndexAllocationContext);
            return Status;
        }

        // Get the length of the bitmap attribute
        BitmapLength = FUNC2(BitmapContext->pRecord);

        // Allocate memory for the bitmap, including some padding; RtlInitializeBitmap() wants a pointer 
        // that's ULONG-aligned, and it wants the size of the memory allocated for it to be a ULONG-multiple.
        BitmapMem = FUNC7(NonPagedPool, BitmapLength + sizeof(ULONG), TAG_NTFS);
        if (!BitmapMem)
        {
            FUNC6("Error: failed to allocate bitmap!");
            FUNC13(BitmapContext);
            FUNC13(IndexAllocationContext);
            return STATUS_INSUFFICIENT_RESOURCES;
        }

        FUNC15(BitmapMem, BitmapLength + sizeof(ULONG));

        // RtlInitializeBitmap() wants a pointer that's ULONG-aligned.
        BitmapPtr = (PULONG)FUNC0((ULONG_PTR)BitmapMem, sizeof(ULONG));

        // Read the existing bitmap data
        Status = FUNC12(Vcb, BitmapContext, 0, (PCHAR)BitmapPtr, BitmapLength);
        if (!FUNC11(Status))
        {
            FUNC6("ERROR: Failed to read bitmap attribute!\n");
            FUNC8(BitmapMem, TAG_NTFS);
            FUNC13(BitmapContext);
            FUNC13(IndexAllocationContext);
            return Status;
        }

        // Initialize bitmap
        FUNC14(&Bitmap, BitmapPtr, BitmapLength * 8);
    }
    else
    {
        // Couldn't find an index allocation
        IndexAllocationContext = NULL;
    }
    

    // Loop through all Index Entries of index, starting with FirstEntry
    IndexEntry = FirstEntry;
    while (IndexEntry <= LastEntry)
    {
        // Does IndexEntry have a sub-node?
        if (IndexEntry->Flags & NTFS_INDEX_ENTRY_NODE)
        {
            if (!(IndexRecord->Header.Flags & INDEX_ROOT_LARGE) || !IndexAllocationContext)
            {
                FUNC6("Filesystem corruption detected!\n");
            }
            else
            {
                Status = FUNC3(Vcb,
                                                   MftRecord,
                                                   IndexBlockSize,
                                                   FileName,
                                                   IndexAllocationContext,
                                                   &Bitmap,
                                                   FUNC10(IndexEntry),
                                                   StartEntry,
                                                   CurrentEntry,
                                                   DirSearch,
                                                   CaseSensitive,
                                                   OutMFTIndex);
                if (FUNC11(Status))
                {
                    FUNC8(BitmapMem, TAG_NTFS);
                    FUNC13(BitmapContext);
                    FUNC13(IndexAllocationContext);
                    return Status;
                }
            }
        }

        // Are we done?
        if (IndexEntry->Flags & NTFS_INDEX_ENTRY_END)
            break;

        // If we've found a file whose index is greater than or equal to StartEntry that matches the search criteria
        if ((IndexEntry->Data.Directory.IndexedFile & NTFS_MFT_MASK) >= NTFS_FILE_FIRST_USER_FILE &&
            *CurrentEntry >= *StartEntry &&
            IndexEntry->FileName.NameType != NTFS_FILE_NAME_DOS &&
            FUNC4(FileName, IndexEntry, DirSearch, CaseSensitive))
        {
            *StartEntry = *CurrentEntry;
            *OutMFTIndex = (IndexEntry->Data.Directory.IndexedFile & NTFS_MFT_MASK);
            if (IndexAllocationContext)
            {
                FUNC8(BitmapMem, TAG_NTFS);
                FUNC13(BitmapContext);
                FUNC13(IndexAllocationContext);
            }
            return STATUS_SUCCESS;
        }

        // Advance to the next index entry
        (*CurrentEntry) += 1;
        FUNC1(IndexEntry->Length >= sizeof(INDEX_ENTRY_ATTRIBUTE));
        IndexEntry = (PINDEX_ENTRY_ATTRIBUTE)((PCHAR)IndexEntry + IndexEntry->Length);
    }

    if (IndexAllocationContext)
    {
        FUNC8(BitmapMem, TAG_NTFS);
        FUNC13(BitmapContext);
        FUNC13(IndexAllocationContext);
    }

    return STATUS_OBJECT_PATH_NOT_FOUND;
}