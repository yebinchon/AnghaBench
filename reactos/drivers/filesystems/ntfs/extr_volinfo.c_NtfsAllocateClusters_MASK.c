#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
typedef  int ULONG ;
struct TYPE_13__ {int ClusterCount; int BytesPerSector; int SectorsPerCluster; } ;
struct TYPE_15__ {int /*<<< orphan*/  FileRecLookasideList; TYPE_1__ NtfsInfo; } ;
struct TYPE_14__ {int /*<<< orphan*/  pRecord; } ;
typedef  int /*<<< orphan*/  RTL_BITMAP ;
typedef  int* PULONG ;
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef  int /*<<< orphan*/ * PFILE_RECORD_HEADER ;
typedef  TYPE_3__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AttributeData ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NTFS_FILE_BITMAP ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*) ; 
 int FUNC13 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int*) ; 
 int FUNC15 (int /*<<< orphan*/ *,int,int*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_DISK_FULL ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 int /*<<< orphan*/  FUNC18 (TYPE_3__*,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int*,int /*<<< orphan*/ *) ; 
 int FUNC19 (int,int) ; 

NTSTATUS
FUNC20(PDEVICE_EXTENSION DeviceExt,
                     ULONG FirstDesiredCluster,
                     ULONG DesiredClusters, 
                     PULONG FirstAssignedCluster, 
                     PULONG AssignedClusters)
{
    NTSTATUS Status;
    PFILE_RECORD_HEADER BitmapRecord;
    PNTFS_ATTR_CONTEXT DataContext;
    ULONGLONG BitmapDataSize;
    PUCHAR BitmapData;
    ULONGLONG FreeClusters = 0;
    RTL_BITMAP Bitmap;
    ULONG AssignedRun;
    ULONG LengthWritten;

    FUNC2("NtfsAllocateClusters(%p, %lu, %lu, %p, %p)\n", DeviceExt, FirstDesiredCluster, DesiredClusters, FirstAssignedCluster, AssignedClusters);

    BitmapRecord = FUNC3(&DeviceExt->FileRecLookasideList);
    if (BitmapRecord == NULL)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = FUNC11(DeviceExt, NTFS_FILE_BITMAP, BitmapRecord);
    if (!FUNC8(Status))
    {
        FUNC6(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return Status;
    }

    Status = FUNC7(DeviceExt, BitmapRecord, AttributeData, L"", 0, &DataContext, NULL);
    if (!FUNC8(Status))
    {
        FUNC6(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return Status;
    }

    BitmapDataSize = FUNC1(DataContext->pRecord);
    BitmapDataSize = FUNC19(BitmapDataSize, 0xffffffff);
    FUNC0((BitmapDataSize * 8) >= DeviceExt->NtfsInfo.ClusterCount);
    BitmapData = FUNC4(NonPagedPool, FUNC9(BitmapDataSize, DeviceExt->NtfsInfo.BytesPerSector), TAG_NTFS);
    if (BitmapData == NULL)
    {
        FUNC12(DataContext);
        FUNC6(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return  STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC2("Total clusters: %I64x\n", DeviceExt->NtfsInfo.ClusterCount);
    FUNC2("Total clusters in bitmap: %I64x\n", BitmapDataSize * 8);
    FUNC2("Diff in size: %I64d B\n", ((BitmapDataSize * 8) - DeviceExt->NtfsInfo.ClusterCount) * DeviceExt->NtfsInfo.SectorsPerCluster * DeviceExt->NtfsInfo.BytesPerSector);

    FUNC10(DeviceExt, DataContext, 0, (PCHAR)BitmapData, (ULONG)BitmapDataSize);

    FUNC16(&Bitmap, (PULONG)BitmapData, DeviceExt->NtfsInfo.ClusterCount);
    FreeClusters = FUNC17(&Bitmap);

    if (FreeClusters < DesiredClusters)
    {
        FUNC12(DataContext);

        FUNC5(BitmapData, TAG_NTFS);
        FUNC6(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return STATUS_DISK_FULL;
    }
    
    // TODO: Observe MFT reservation zone

    // Can we get one contiguous run?
    AssignedRun = FUNC13(&Bitmap, DesiredClusters, FirstDesiredCluster);

    if (AssignedRun != 0xFFFFFFFF)
    {
        *FirstAssignedCluster = AssignedRun;
        *AssignedClusters = DesiredClusters;
    }
    else
    {
        // we can't get one contiguous run
        *AssignedClusters = FUNC15(&Bitmap, FirstDesiredCluster, FirstAssignedCluster);
        
        if (*AssignedClusters == 0)
        {
            // we couldn't find any runs starting at DesiredFirstCluster
            *AssignedClusters = FUNC14(&Bitmap, FirstAssignedCluster);
        }
            
    }
                
    Status = FUNC18(DeviceExt, DataContext, 0, BitmapData, (ULONG)BitmapDataSize, &LengthWritten, BitmapRecord);
    
    FUNC12(DataContext);

    FUNC5(BitmapData, TAG_NTFS);
    FUNC6(&DeviceExt->FileRecLookasideList, BitmapRecord);

    return Status;
}