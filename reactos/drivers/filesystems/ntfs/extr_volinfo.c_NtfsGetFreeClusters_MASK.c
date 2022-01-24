#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
typedef  int ULONGLONG ;
typedef  int ULONG ;
struct TYPE_12__ {int ClusterCount; int BytesPerSector; int SectorsPerCluster; } ;
struct TYPE_14__ {int /*<<< orphan*/  FileRecLookasideList; TYPE_1__ NtfsInfo; } ;
struct TYPE_13__ {int /*<<< orphan*/  pRecord; } ;
typedef  int /*<<< orphan*/  RTL_BITMAP ;
typedef  int /*<<< orphan*/  PULONG ;
typedef  TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef  int /*<<< orphan*/ * PFILE_RECORD_HEADER ;
typedef  TYPE_3__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/ * PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AttributeData ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_2__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NTFS_FILE_BITMAP ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 int /*<<< orphan*/  FUNC10 (int,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,TYPE_2__*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TAG_NTFS ; 

ULONGLONG
FUNC16(PDEVICE_EXTENSION DeviceExt)
{
    NTSTATUS Status;
    PFILE_RECORD_HEADER BitmapRecord;
    PNTFS_ATTR_CONTEXT DataContext;
    ULONGLONG BitmapDataSize;
    PCHAR BitmapData;
    ULONGLONG FreeClusters = 0;
    ULONG Read = 0;
    RTL_BITMAP Bitmap;

    FUNC2("NtfsGetFreeClusters(%p)\n", DeviceExt);

    BitmapRecord = FUNC4(&DeviceExt->FileRecLookasideList);
    if (BitmapRecord == NULL)
    {
        return 0;
    }

    Status = FUNC12(DeviceExt, NTFS_FILE_BITMAP, BitmapRecord);
    if (!FUNC9(Status))
    {
        FUNC7(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    Status = FUNC8(DeviceExt, BitmapRecord, AttributeData, L"", 0, &DataContext, NULL);
    if (!FUNC9(Status))
    {
        FUNC7(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    BitmapDataSize = FUNC1(DataContext->pRecord);
    FUNC0((BitmapDataSize * 8) >= DeviceExt->NtfsInfo.ClusterCount);
    BitmapData = FUNC5(NonPagedPool, FUNC10(BitmapDataSize, DeviceExt->NtfsInfo.BytesPerSector), TAG_NTFS);
    if (BitmapData == NULL)
    {
        FUNC13(DataContext);
        FUNC7(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    /* FIXME: Totally underoptimized! */
    for (; Read < BitmapDataSize; Read += DeviceExt->NtfsInfo.BytesPerSector)
    {
        FUNC11(DeviceExt, DataContext, Read, (PCHAR)((ULONG_PTR)BitmapData + Read), DeviceExt->NtfsInfo.BytesPerSector);
    }
    FUNC13(DataContext);

    FUNC3("Total clusters: %I64x\n", DeviceExt->NtfsInfo.ClusterCount);
    FUNC3("Total clusters in bitmap: %I64x\n", BitmapDataSize * 8);
    FUNC3("Diff in size: %I64d B\n", ((BitmapDataSize * 8) - DeviceExt->NtfsInfo.ClusterCount) * DeviceExt->NtfsInfo.SectorsPerCluster * DeviceExt->NtfsInfo.BytesPerSector);

    FUNC14(&Bitmap, (PULONG)BitmapData, DeviceExt->NtfsInfo.ClusterCount);
    FreeClusters = FUNC15(&Bitmap);

    FUNC6(BitmapData, TAG_NTFS);
    FUNC7(&DeviceExt->FileRecLookasideList, BitmapRecord);

    return FreeClusters;
}