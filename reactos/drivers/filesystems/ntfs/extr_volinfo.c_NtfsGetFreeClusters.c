
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_12__ {int ClusterCount; int BytesPerSector; int SectorsPerCluster; } ;
struct TYPE_14__ {int FileRecLookasideList; TYPE_1__ NtfsInfo; } ;
struct TYPE_13__ {int pRecord; } ;
typedef int RTL_BITMAP ;
typedef int PULONG ;
typedef TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef int * PFILE_RECORD_HEADER ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int * PCHAR ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 int AttributeData ;
 int AttributeDataLength (int ) ;
 int DPRINT (char*,TYPE_3__*) ;
 int DPRINT1 (char*,int) ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int * ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 int ExFreeToNPagedLookasideList (int *,int *) ;
 int FindAttribute (TYPE_3__*,int *,int ,char*,int ,TYPE_2__**,int *) ;
 int NTFS_FILE_BITMAP ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int ROUND_UP (int,int) ;
 int ReadAttribute (TYPE_3__*,TYPE_2__*,int,int *,int) ;
 int ReadFileRecord (TYPE_3__*,int ,int *) ;
 int ReleaseAttributeContext (TYPE_2__*) ;
 int RtlInitializeBitMap (int *,int ,int) ;
 int RtlNumberOfClearBits (int *) ;
 int TAG_NTFS ;

ULONGLONG
NtfsGetFreeClusters(PDEVICE_EXTENSION DeviceExt)
{
    NTSTATUS Status;
    PFILE_RECORD_HEADER BitmapRecord;
    PNTFS_ATTR_CONTEXT DataContext;
    ULONGLONG BitmapDataSize;
    PCHAR BitmapData;
    ULONGLONG FreeClusters = 0;
    ULONG Read = 0;
    RTL_BITMAP Bitmap;

    DPRINT("NtfsGetFreeClusters(%p)\n", DeviceExt);

    BitmapRecord = ExAllocateFromNPagedLookasideList(&DeviceExt->FileRecLookasideList);
    if (BitmapRecord == ((void*)0))
    {
        return 0;
    }

    Status = ReadFileRecord(DeviceExt, NTFS_FILE_BITMAP, BitmapRecord);
    if (!NT_SUCCESS(Status))
    {
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    Status = FindAttribute(DeviceExt, BitmapRecord, AttributeData, L"", 0, &DataContext, ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    BitmapDataSize = AttributeDataLength(DataContext->pRecord);
    ASSERT((BitmapDataSize * 8) >= DeviceExt->NtfsInfo.ClusterCount);
    BitmapData = ExAllocatePoolWithTag(NonPagedPool, ROUND_UP(BitmapDataSize, DeviceExt->NtfsInfo.BytesPerSector), TAG_NTFS);
    if (BitmapData == ((void*)0))
    {
        ReleaseAttributeContext(DataContext);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return 0;
    }


    for (; Read < BitmapDataSize; Read += DeviceExt->NtfsInfo.BytesPerSector)
    {
        ReadAttribute(DeviceExt, DataContext, Read, (PCHAR)((ULONG_PTR)BitmapData + Read), DeviceExt->NtfsInfo.BytesPerSector);
    }
    ReleaseAttributeContext(DataContext);

    DPRINT1("Total clusters: %I64x\n", DeviceExt->NtfsInfo.ClusterCount);
    DPRINT1("Total clusters in bitmap: %I64x\n", BitmapDataSize * 8);
    DPRINT1("Diff in size: %I64d B\n", ((BitmapDataSize * 8) - DeviceExt->NtfsInfo.ClusterCount) * DeviceExt->NtfsInfo.SectorsPerCluster * DeviceExt->NtfsInfo.BytesPerSector);

    RtlInitializeBitMap(&Bitmap, (PULONG)BitmapData, DeviceExt->NtfsInfo.ClusterCount);
    FreeClusters = RtlNumberOfClearBits(&Bitmap);

    ExFreePoolWithTag(BitmapData, TAG_NTFS);
    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, BitmapRecord);

    return FreeClusters;
}
