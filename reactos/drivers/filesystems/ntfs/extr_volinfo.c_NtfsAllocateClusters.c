
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_13__ {int ClusterCount; int BytesPerSector; int SectorsPerCluster; } ;
struct TYPE_15__ {int FileRecLookasideList; TYPE_1__ NtfsInfo; } ;
struct TYPE_14__ {int pRecord; } ;
typedef int RTL_BITMAP ;
typedef int* PULONG ;
typedef int * PUCHAR ;
typedef TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef int * PFILE_RECORD_HEADER ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int PCHAR ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 int AttributeData ;
 int AttributeDataLength (int ) ;
 int DPRINT (char*,...) ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int * ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 int ExFreeToNPagedLookasideList (int *,int *) ;
 int FindAttribute (TYPE_3__*,int *,int ,char*,int ,TYPE_2__**,int *) ;
 int NTFS_FILE_BITMAP ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int ROUND_UP (int,int) ;
 int ReadAttribute (TYPE_3__*,TYPE_2__*,int ,int ,int) ;
 int ReadFileRecord (TYPE_3__*,int ,int *) ;
 int ReleaseAttributeContext (TYPE_2__*) ;
 int RtlFindClearBitsAndSet (int *,int,int) ;
 int RtlFindLongestRunClear (int *,int*) ;
 int RtlFindNextForwardRunClear (int *,int,int*) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int RtlNumberOfClearBits (int *) ;
 int STATUS_DISK_FULL ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int TAG_NTFS ;
 int WriteAttribute (TYPE_3__*,TYPE_2__*,int ,int *,int,int*,int *) ;
 int min (int,int) ;

NTSTATUS
NtfsAllocateClusters(PDEVICE_EXTENSION DeviceExt,
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

    DPRINT("NtfsAllocateClusters(%p, %lu, %lu, %p, %p)\n", DeviceExt, FirstDesiredCluster, DesiredClusters, FirstAssignedCluster, AssignedClusters);

    BitmapRecord = ExAllocateFromNPagedLookasideList(&DeviceExt->FileRecLookasideList);
    if (BitmapRecord == ((void*)0))
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = ReadFileRecord(DeviceExt, NTFS_FILE_BITMAP, BitmapRecord);
    if (!NT_SUCCESS(Status))
    {
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return Status;
    }

    Status = FindAttribute(DeviceExt, BitmapRecord, AttributeData, L"", 0, &DataContext, ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return Status;
    }

    BitmapDataSize = AttributeDataLength(DataContext->pRecord);
    BitmapDataSize = min(BitmapDataSize, 0xffffffff);
    ASSERT((BitmapDataSize * 8) >= DeviceExt->NtfsInfo.ClusterCount);
    BitmapData = ExAllocatePoolWithTag(NonPagedPool, ROUND_UP(BitmapDataSize, DeviceExt->NtfsInfo.BytesPerSector), TAG_NTFS);
    if (BitmapData == ((void*)0))
    {
        ReleaseAttributeContext(DataContext);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    DPRINT("Total clusters: %I64x\n", DeviceExt->NtfsInfo.ClusterCount);
    DPRINT("Total clusters in bitmap: %I64x\n", BitmapDataSize * 8);
    DPRINT("Diff in size: %I64d B\n", ((BitmapDataSize * 8) - DeviceExt->NtfsInfo.ClusterCount) * DeviceExt->NtfsInfo.SectorsPerCluster * DeviceExt->NtfsInfo.BytesPerSector);

    ReadAttribute(DeviceExt, DataContext, 0, (PCHAR)BitmapData, (ULONG)BitmapDataSize);

    RtlInitializeBitMap(&Bitmap, (PULONG)BitmapData, DeviceExt->NtfsInfo.ClusterCount);
    FreeClusters = RtlNumberOfClearBits(&Bitmap);

    if (FreeClusters < DesiredClusters)
    {
        ReleaseAttributeContext(DataContext);

        ExFreePoolWithTag(BitmapData, TAG_NTFS);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, BitmapRecord);
        return STATUS_DISK_FULL;
    }




    AssignedRun = RtlFindClearBitsAndSet(&Bitmap, DesiredClusters, FirstDesiredCluster);

    if (AssignedRun != 0xFFFFFFFF)
    {
        *FirstAssignedCluster = AssignedRun;
        *AssignedClusters = DesiredClusters;
    }
    else
    {

        *AssignedClusters = RtlFindNextForwardRunClear(&Bitmap, FirstDesiredCluster, FirstAssignedCluster);

        if (*AssignedClusters == 0)
        {

            *AssignedClusters = RtlFindLongestRunClear(&Bitmap, FirstAssignedCluster);
        }

    }

    Status = WriteAttribute(DeviceExt, DataContext, 0, BitmapData, (ULONG)BitmapDataSize, &LengthWritten, BitmapRecord);

    ReleaseAttributeContext(DataContext);

    ExFreePoolWithTag(BitmapData, TAG_NTFS);
    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, BitmapRecord);

    return Status;
}
