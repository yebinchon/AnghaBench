#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_40__   TYPE_6__ ;
typedef  struct TYPE_39__   TYPE_5__ ;
typedef  struct TYPE_38__   TYPE_4__ ;
typedef  struct TYPE_37__   TYPE_3__ ;
typedef  struct TYPE_36__   TYPE_33__ ;
typedef  struct TYPE_35__   TYPE_2__ ;
typedef  struct TYPE_34__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_40__ {int QuadPart; scalar_t__ LowPart; } ;
struct TYPE_34__ {scalar_t__ BytesPerFileRecord; } ;
struct TYPE_39__ {scalar_t__ MftDataOffset; int /*<<< orphan*/  DirResource; int /*<<< orphan*/  FileRecLookasideList; TYPE_4__* MasterFileTable; TYPE_2__* VolumeFcb; TYPE_3__* MFTContext; TYPE_1__ NtfsInfo; } ;
struct TYPE_38__ {scalar_t__ Flags; } ;
struct TYPE_37__ {TYPE_33__* pRecord; } ;
struct TYPE_36__ {scalar_t__ IsNonResident; } ;
struct TYPE_35__ {scalar_t__ MFTIndex; } ;
typedef  scalar_t__ PUCHAR ;
typedef  TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef  TYPE_4__* PFILE_RECORD_HEADER ;
typedef  TYPE_5__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  scalar_t__ LONGLONG ;
typedef  TYPE_6__ LARGE_INTEGER ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int) ; 
 int ATTR_RECORD_ALIGNMENT ; 
 int /*<<< orphan*/  AttributeBitmap ; 
 scalar_t__ FUNC1 (TYPE_33__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,TYPE_4__*,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_3__**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 TYPE_4__* FUNC10 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_5__*,TYPE_4__*) ; 
 scalar_t__ FUNC12 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_CANT_WAIT ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  FUNC15 (TYPE_5__*,TYPE_3__*,scalar_t__,TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,TYPE_3__*,scalar_t__,TYPE_4__*,TYPE_6__*) ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*,scalar_t__,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_5__*,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__*,TYPE_4__*) ; 
 scalar_t__ FUNC20 (scalar_t__,scalar_t__) ; 

NTSTATUS
FUNC21(PDEVICE_EXTENSION Vcb, BOOLEAN CanWait)
{
    PNTFS_ATTR_CONTEXT BitmapContext;
    LARGE_INTEGER BitmapSize;
    LARGE_INTEGER DataSize;
    LONGLONG BitmapSizeDifference;
    ULONG NewRecords = ATTR_RECORD_ALIGNMENT * 8;  // Allocate one new record for every bit of every byte we'll be adding to the bitmap
    ULONG DataSizeDifference = Vcb->NtfsInfo.BytesPerFileRecord * NewRecords;
    ULONG BitmapOffset;
    PUCHAR BitmapBuffer;
    ULONGLONG BitmapBytes;
    ULONGLONG NewBitmapSize;
    ULONGLONG FirstNewMftIndex;
    ULONG BytesRead;
    ULONG LengthWritten;
    PFILE_RECORD_HEADER BlankFileRecord;
    ULONG i;
    NTSTATUS Status;

    FUNC2("IncreaseMftSize(%p, %s)\n", Vcb, CanWait ? "TRUE" : "FALSE");

    // We need exclusive access to the mft while we change its size
    if (!FUNC3(&(Vcb->DirResource), CanWait))
    {
        return STATUS_CANT_WAIT;
    }

    // Create a blank file record that will be used later
    BlankFileRecord = FUNC10(Vcb);
    if (!BlankFileRecord)
    {
        FUNC2("Error: Unable to create empty file record!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    // Clear the flags (file record is not in use)
    BlankFileRecord->Flags = 0;

    // Find the bitmap attribute of master file table
    Status = FUNC8(Vcb, Vcb->MasterFileTable, AttributeBitmap, L"", 0, &BitmapContext, NULL);
    if (!FUNC9(Status))
    {
        FUNC2("ERROR: Couldn't find $BITMAP attribute of Mft!\n");
        FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
        FUNC7(&(Vcb->DirResource));
        return Status;
    }

    // Get size of Bitmap Attribute
    BitmapSize.QuadPart = FUNC1(BitmapContext->pRecord);

    // Calculate the new mft size
    DataSize.QuadPart = FUNC1(Vcb->MFTContext->pRecord) + DataSizeDifference;

    // Find the index of the first Mft entry that will be created
    FirstNewMftIndex = FUNC1(Vcb->MFTContext->pRecord) / Vcb->NtfsInfo.BytesPerFileRecord;

    // Determine how many bytes will make up the bitmap
    BitmapBytes = DataSize.QuadPart / Vcb->NtfsInfo.BytesPerFileRecord / 8;
    if ((DataSize.QuadPart / Vcb->NtfsInfo.BytesPerFileRecord) % 8 != 0)
        BitmapBytes++;

    // Windows will always keep the number of bytes in a bitmap as a multiple of 8, so no bytes are wasted on slack
    BitmapBytes = FUNC0(BitmapBytes, ATTR_RECORD_ALIGNMENT);

    // Determine how much we need to adjust the bitmap size (it's possible we don't)
    BitmapSizeDifference = BitmapBytes - BitmapSize.QuadPart;
    NewBitmapSize = FUNC20(BitmapSize.QuadPart + BitmapSizeDifference, BitmapSize.QuadPart);

    // Allocate memory for the bitmap
    BitmapBuffer = FUNC4(NonPagedPool, NewBitmapSize, TAG_NTFS);
    if (!BitmapBuffer)
    {
        FUNC2("ERROR: Unable to allocate memory for bitmap attribute!\n");
        FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
        FUNC7(&(Vcb->DirResource));
        FUNC13(BitmapContext);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    // Zero the bytes we'll be adding
    FUNC14(BitmapBuffer, NewBitmapSize);

    // Read the bitmap attribute
    BytesRead = FUNC12(Vcb,
                              BitmapContext,
                              0,
                              (PCHAR)BitmapBuffer,
                              BitmapSize.LowPart);
    if (BytesRead != BitmapSize.LowPart)
    {
        FUNC2("ERROR: Bytes read != Bitmap size!\n");
        FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
        FUNC7(&(Vcb->DirResource));
        FUNC5(BitmapBuffer, TAG_NTFS);
        FUNC13(BitmapContext);
        return STATUS_INVALID_PARAMETER;
    }

    // Increase the mft size
    Status = FUNC15(Vcb, Vcb->MFTContext, Vcb->MftDataOffset, Vcb->MasterFileTable, &DataSize);
    if (!FUNC9(Status))
    {
        FUNC2("ERROR: Failed to set size of $MFT data attribute!\n");
        FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
        FUNC7(&(Vcb->DirResource));
        FUNC5(BitmapBuffer, TAG_NTFS);
        FUNC13(BitmapContext);
        return Status;
    }
    
    // We'll need to find the bitmap again, because its offset will have changed after resizing the data attribute
    FUNC13(BitmapContext);
    Status = FUNC8(Vcb, Vcb->MasterFileTable, AttributeBitmap, L"", 0, &BitmapContext, &BitmapOffset);
    if (!FUNC9(Status))
    {
        FUNC2("ERROR: Couldn't find $BITMAP attribute of Mft!\n");
        FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
        FUNC7(&(Vcb->DirResource));
        return Status;
    }

    // If the bitmap grew
    if (BitmapSizeDifference > 0)
    {
        // Set the new bitmap size
        BitmapSize.QuadPart = NewBitmapSize;
        if (BitmapContext->pRecord->IsNonResident)
            Status = FUNC15(Vcb, BitmapContext, BitmapOffset, Vcb->MasterFileTable, &BitmapSize);
        else
            Status = FUNC16(Vcb, BitmapContext, BitmapOffset, Vcb->MasterFileTable, &BitmapSize);
    
        if (!FUNC9(Status))
        {
            FUNC2("ERROR: Failed to set size of bitmap attribute!\n");
            FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
            FUNC7(&(Vcb->DirResource));
            FUNC5(BitmapBuffer, TAG_NTFS);
            FUNC13(BitmapContext);
            return Status;
        }
    }

    FUNC11(Vcb, Vcb->MasterFileTable);

    // Update the file record with the new attribute sizes
    Status = FUNC17(Vcb, Vcb->VolumeFcb->MFTIndex, Vcb->MasterFileTable);
    if (!FUNC9(Status))
    {
        FUNC2("ERROR: Failed to update $MFT file record!\n");
        FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
        FUNC7(&(Vcb->DirResource));
        FUNC5(BitmapBuffer, TAG_NTFS);
        FUNC13(BitmapContext);
        return Status;
    }

    // Write out the new bitmap
    Status = FUNC19(Vcb, BitmapContext, 0, BitmapBuffer, NewBitmapSize, &LengthWritten, Vcb->MasterFileTable);
    if (!FUNC9(Status))
    {
        FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
        FUNC7(&(Vcb->DirResource));
        FUNC5(BitmapBuffer, TAG_NTFS);
        FUNC13(BitmapContext);
        FUNC2("ERROR: Couldn't write to bitmap attribute of $MFT!\n");
        return Status;
    }

    // Create blank records for the new file record entries.
    for (i = 0; i < NewRecords; i++)
    {
        Status = FUNC17(Vcb, FirstNewMftIndex + i, BlankFileRecord);
        if (!FUNC9(Status))
        {
            FUNC2("ERROR: Failed to write blank file record!\n");
            FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
            FUNC7(&(Vcb->DirResource));
            FUNC5(BitmapBuffer, TAG_NTFS);
            FUNC13(BitmapContext);
            return Status;
        }
    }

    // Update the mft mirror
    Status = FUNC18(Vcb);

    // Cleanup
    FUNC6(&Vcb->FileRecLookasideList, BlankFileRecord);
    FUNC7(&(Vcb->DirResource));
    FUNC5(BitmapBuffer, TAG_NTFS);
    FUNC13(BitmapContext);

    return Status;
}