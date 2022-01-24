#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_4__ ;
typedef  struct TYPE_25__   TYPE_3__ ;
typedef  struct TYPE_24__   TYPE_2__ ;
typedef  struct TYPE_23__   TYPE_1__ ;
typedef  struct TYPE_22__   TYPE_19__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG_PTR ;
typedef  int ULONGLONG ;
typedef  int ULONG ;
struct TYPE_26__ {int QuadPart; } ;
struct TYPE_23__ {int BytesPerIndexRecord; int BytesPerCluster; } ;
struct TYPE_25__ {TYPE_1__ NtfsInfo; } ;
struct TYPE_24__ {int /*<<< orphan*/  FileMFTIndex; TYPE_19__* pRecord; } ;
struct TYPE_22__ {scalar_t__ IsNonResident; } ;
typedef  int /*<<< orphan*/  RTL_BITMAP ;
typedef  int* PULONGLONG ;
typedef  int* PULONG ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef  int /*<<< orphan*/  PFILE_RECORD_HEADER ;
typedef  TYPE_3__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_4__ LARGE_INTEGER ;

/* Variables and functions */
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ATTR_RECORD_ALIGNMENT ; 
 int /*<<< orphan*/  AttributeBitmap ; 
 int FUNC2 (TYPE_19__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,TYPE_2__**,int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC13 (int*,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ ,TYPE_4__*) ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 int /*<<< orphan*/  FUNC16 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int,int*,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC18(PDEVICE_EXTENSION DeviceExt,
                  PFILE_RECORD_HEADER FileRecord,
                  ULONG IndexBufferSize,
                  PNTFS_ATTR_CONTEXT IndexAllocationCtx,
                  ULONG IndexAllocationOffset,
                  PULONGLONG NewVCN)
{
    NTSTATUS Status;
    PNTFS_ATTR_CONTEXT BitmapCtx;
    ULONGLONG IndexAllocationLength, BitmapLength;
    ULONG BitmapOffset;
    ULONGLONG NextNodeNumber;
    PCHAR *BitmapMem;
    ULONG *BitmapPtr;
    RTL_BITMAP Bitmap;
    ULONG BytesWritten;
    ULONG BytesNeeded;
    LARGE_INTEGER DataSize;

    FUNC4("AllocateIndexNode(%p, %p, %lu, %p, %lu, %p) called.\n", DeviceExt,
            FileRecord,
            IndexBufferSize,
            IndexAllocationCtx,
            IndexAllocationOffset,
            NewVCN);

    // Get the length of the attribute allocation
    IndexAllocationLength = FUNC2(IndexAllocationCtx->pRecord);

    // Find the bitmap attribute for the index
    Status = FUNC7(DeviceExt,
                           FileRecord,
                           AttributeBitmap,
                           L"$I30",
                           4,
                           &BitmapCtx,
                           &BitmapOffset);
    if (!FUNC8(Status))
    {
        FUNC4("FIXME: Need to add bitmap attribute!\n");
        return STATUS_NOT_IMPLEMENTED;
    }

    // Get the length of the bitmap attribute
    BitmapLength = FUNC2(BitmapCtx->pRecord);

    NextNodeNumber = IndexAllocationLength / DeviceExt->NtfsInfo.BytesPerIndexRecord;

    // TODO: Find unused allocation in bitmap and use that space first

    // Add another bit to bitmap

    // See how many bytes we need to store the amount of bits we'll have
    BytesNeeded = NextNodeNumber / 8;
    BytesNeeded++;

    // Windows seems to allocate the bitmap in 8-byte chunks to keep any bytes from being wasted on padding
    BytesNeeded = FUNC0(BytesNeeded, ATTR_RECORD_ALIGNMENT);

    // Allocate memory for the bitmap, including some padding; RtlInitializeBitmap() wants a pointer 
    // that's ULONG-aligned, and it wants the size of the memory allocated for it to be a ULONG-multiple.
    BitmapMem = FUNC5(NonPagedPool, BytesNeeded + sizeof(ULONG), TAG_NTFS);
    if (!BitmapMem)
    {
        FUNC4("Error: failed to allocate bitmap!");
        FUNC10(BitmapCtx);
        return STATUS_INSUFFICIENT_RESOURCES;
    }
    // RtlInitializeBitmap() wants a pointer that's ULONG-aligned.
    BitmapPtr = (PULONG)FUNC1((ULONG_PTR)BitmapMem, sizeof(ULONG));

    FUNC13(BitmapPtr, BytesNeeded);

    // Read the existing bitmap data
    Status = FUNC9(DeviceExt, BitmapCtx, 0, (PCHAR)BitmapPtr, BitmapLength);

    // Initialize bitmap
    FUNC11(&Bitmap, BitmapPtr, NextNodeNumber);

    // Do we need to enlarge the bitmap?
    if (BytesNeeded > BitmapLength)
    {
        // TODO: handle synchronization issues that could occur from changing the directory's file record
        // Change bitmap size
        DataSize.QuadPart = BytesNeeded;
        if (BitmapCtx->pRecord->IsNonResident)
        {
            Status = FUNC14(DeviceExt,
                                                       BitmapCtx,
                                                       BitmapOffset,
                                                       FileRecord,
                                                       &DataSize);
        }
        else
        {
            Status = FUNC15(DeviceExt,
                                                    BitmapCtx,
                                                    BitmapOffset,
                                                    FileRecord,
                                                    &DataSize);
        }
        if (!FUNC8(Status))
        {
            FUNC4("ERROR: Failed to set length of bitmap attribute!\n");
            FUNC10(BitmapCtx);
            return Status;
        }
    }

    // Enlarge Index Allocation attribute
    DataSize.QuadPart = IndexAllocationLength + IndexBufferSize;
    Status = FUNC14(DeviceExt,
                                               IndexAllocationCtx,
                                               IndexAllocationOffset,
                                               FileRecord,
                                               &DataSize);
    if (!FUNC8(Status))
    {
        FUNC4("ERROR: Failed to set length of index allocation!\n");
        FUNC10(BitmapCtx);
        return Status;
    }

    // Update file record on disk
    Status = FUNC16(DeviceExt, IndexAllocationCtx->FileMFTIndex, FileRecord);
    if (!FUNC8(Status))
    {
        FUNC4("ERROR: Failed to update file record!\n");
        FUNC10(BitmapCtx);
        return Status;
    }

    // Set the bit for the new index record
    FUNC12(&Bitmap, NextNodeNumber, 1);
  
    // Write the new bitmap attribute
    Status = FUNC17(DeviceExt,
                            BitmapCtx,
                            0,
                            (const PUCHAR)BitmapPtr,
                            BytesNeeded,
                            &BytesWritten,
                            FileRecord);
    if (!FUNC8(Status))
    {
        FUNC4("ERROR: Unable to write to $I30 bitmap attribute!\n");
    }

    // Calculate VCN of new node number
    *NewVCN = NextNodeNumber * (IndexBufferSize / DeviceExt->NtfsInfo.BytesPerCluster);

    FUNC3("New VCN: %I64u\n", *NewVCN);

    FUNC6(BitmapMem, TAG_NTFS);
    FUNC10(BitmapCtx);

    return Status;
}