#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_19__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_26__ {int /*<<< orphan*/  FileMFTIndex; TYPE_19__* pRecord; int /*<<< orphan*/  DataRunsMCB; } ;
struct TYPE_23__ {int HighestVCN; scalar_t__ MappingPairsOffset; } ;
struct TYPE_25__ {scalar_t__ Type; scalar_t__ Length; TYPE_3__ NonResident; } ;
struct TYPE_21__ {int ClusterCount; int /*<<< orphan*/  BytesPerCluster; int /*<<< orphan*/  BytesPerFileRecord; int /*<<< orphan*/  BytesPerSector; } ;
struct TYPE_24__ {TYPE_1__ NtfsInfo; int /*<<< orphan*/  FileRecLookasideList; } ;
struct TYPE_22__ {int HighestVCN; scalar_t__ MappingPairsOffset; } ;
struct TYPE_20__ {scalar_t__ Length; TYPE_2__ NonResident; int /*<<< orphan*/  IsNonResident; } ;
typedef  int /*<<< orphan*/  RTL_BITMAP ;
typedef  int /*<<< orphan*/  PVOID ;
typedef  int /*<<< orphan*/  PULONG ;
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  TYPE_4__* PNTFS_VCB ;
typedef  TYPE_5__* PNTFS_ATTR_RECORD ;
typedef  TYPE_6__* PNTFS_ATTR_CONTEXT ;
typedef  int /*<<< orphan*/ * PFILE_RECORD_HEADER ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int LONGLONG ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  ATTR_RECORD_ALIGNMENT ; 
 int /*<<< orphan*/  AttributeData ; 
 int FUNC2 (TYPE_19__*) ; 
 scalar_t__ AttributeEnd ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_RECORD_END ; 
 int /*<<< orphan*/  FUNC9 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_6__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int*,int*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  NTFS_FILE_BITMAP ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_NO_MEMORY ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 int ULONG_MAX ; 
 int /*<<< orphan*/  FUNC22 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (TYPE_4__*,TYPE_6__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 void* FUNC24 (int,int) ; 

NTSTATUS
FUNC25(PNTFS_VCB Vcb,
             PNTFS_ATTR_CONTEXT AttrContext,
             ULONG AttrOffset,
             PFILE_RECORD_HEADER FileRecord,
             ULONG ClustersToFree)
{
    NTSTATUS Status = STATUS_SUCCESS;
    ULONG ClustersLeftToFree = ClustersToFree;

    PNTFS_ATTR_RECORD DestinationAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + AttrOffset);
    ULONG NextAttributeOffset = AttrOffset + AttrContext->pRecord->Length;
    PNTFS_ATTR_RECORD NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + NextAttributeOffset);

    PUCHAR RunBuffer;
    ULONG RunBufferSize = 0;

    PFILE_RECORD_HEADER BitmapRecord;
    PNTFS_ATTR_CONTEXT DataContext;
    ULONGLONG BitmapDataSize;
    PUCHAR BitmapData;
    RTL_BITMAP Bitmap;
    ULONG LengthWritten;

    if (!AttrContext->pRecord->IsNonResident)
    {
        return STATUS_INVALID_PARAMETER;
    }

    // Read the $Bitmap file
    BitmapRecord = FUNC5(&Vcb->FileRecLookasideList);
    if (BitmapRecord == NULL)
    {
        FUNC4("Error: Unable to allocate memory for bitmap file record!\n");
        return STATUS_NO_MEMORY;
    }

    Status = FUNC16(Vcb, NTFS_FILE_BITMAP, BitmapRecord);
    if (!FUNC12(Status))
    {
        FUNC4("Error: Unable to read file record for bitmap!\n");
        FUNC8(&Vcb->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    Status = FUNC9(Vcb, BitmapRecord, AttributeData, L"", 0, &DataContext, NULL);
    if (!FUNC12(Status))
    {
        FUNC4("Error: Unable to find data attribute for bitmap file!\n");
        FUNC8(&Vcb->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    BitmapDataSize = FUNC2(DataContext->pRecord);
    BitmapDataSize = FUNC24(BitmapDataSize, ULONG_MAX);
    FUNC1((BitmapDataSize * 8) >= Vcb->NtfsInfo.ClusterCount);
    BitmapData = FUNC6(NonPagedPool, FUNC14(BitmapDataSize, Vcb->NtfsInfo.BytesPerSector), TAG_NTFS);
    if (BitmapData == NULL)
    {
        FUNC4("Error: Unable to allocate memory for bitmap file data!\n");
        FUNC17(DataContext);
        FUNC8(&Vcb->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    FUNC15(Vcb, DataContext, 0, (PCHAR)BitmapData, (ULONG)BitmapDataSize);

    FUNC20(&Bitmap, (PULONG)BitmapData, Vcb->NtfsInfo.ClusterCount);
    
    // free clusters in $BITMAP file
    while (ClustersLeftToFree > 0)
    {
        LONGLONG LargeVbn, LargeLbn;

        if (!FUNC10(&AttrContext->DataRunsMCB, &LargeVbn, &LargeLbn))
        {
            Status = STATUS_INVALID_PARAMETER;
            FUNC4("DRIVER ERROR: FreeClusters called to free %lu clusters, which is %lu more clusters than are assigned to attribute!",
                    ClustersToFree,
                    ClustersLeftToFree);
            break;
        }

        if (LargeLbn != -1)
        {
            // deallocate this cluster
            FUNC18(&Bitmap, LargeLbn, 1);
        }
        FUNC11(&AttrContext->DataRunsMCB, AttrContext->pRecord->NonResident.HighestVCN);

        // decrement HighestVCN, but don't let it go below 0
        AttrContext->pRecord->NonResident.HighestVCN = FUNC24(AttrContext->pRecord->NonResident.HighestVCN, AttrContext->pRecord->NonResident.HighestVCN - 1);
        ClustersLeftToFree--;
    }

    // update $BITMAP file on disk
    Status = FUNC23(Vcb, DataContext, 0, BitmapData, (ULONG)BitmapDataSize, &LengthWritten, FileRecord);
    if (!FUNC12(Status))
    {
        FUNC17(DataContext);
        FUNC7(BitmapData, TAG_NTFS);
        FUNC8(&Vcb->FileRecLookasideList, BitmapRecord);
        return Status;
    }

    FUNC17(DataContext);
    FUNC7(BitmapData, TAG_NTFS);
    FUNC8(&Vcb->FileRecLookasideList, BitmapRecord);
    
    // Save updated data runs to file record

    // Allocate some memory for a new RunBuffer
    RunBuffer = FUNC6(NonPagedPool, Vcb->NtfsInfo.BytesPerFileRecord, TAG_NTFS);
    if (!RunBuffer)
    {
        FUNC4("ERROR: Couldn't allocate memory for data runs!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    // Convert the map control block back to encoded data runs
    FUNC3(&AttrContext->DataRunsMCB, RunBuffer, Vcb->NtfsInfo.BytesPerCluster, &RunBufferSize);

    // Update HighestVCN
    DestinationAttribute->NonResident.HighestVCN = AttrContext->pRecord->NonResident.HighestVCN;

    // Write data runs to destination attribute
    FUNC19((PVOID)((ULONG_PTR)DestinationAttribute + DestinationAttribute->NonResident.MappingPairsOffset),
                  RunBuffer,
                  RunBufferSize);

    // Is DestinationAttribute the last attribute in the file record?
    if (NextAttribute->Type == AttributeEnd)
    {
        // update attribute length
        DestinationAttribute->Length = FUNC0(AttrContext->pRecord->NonResident.MappingPairsOffset + RunBufferSize,
                                                 ATTR_RECORD_ALIGNMENT);

        FUNC1(DestinationAttribute->Length <= AttrContext->pRecord->Length);

        AttrContext->pRecord->Length = DestinationAttribute->Length;

        // write end markers
        NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)DestinationAttribute + DestinationAttribute->Length);
        FUNC21(FileRecord, NextAttribute, FILE_RECORD_END);
    }

    // Update the file record
    Status = FUNC22(Vcb, AttrContext->FileMFTIndex, FileRecord);

    FUNC7(RunBuffer, TAG_NTFS);

    FUNC13((PUCHAR)((ULONG_PTR)DestinationAttribute + DestinationAttribute->NonResident.MappingPairsOffset), 0);

    return Status;
}