
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_19__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_26__ {int FileMFTIndex; TYPE_19__* pRecord; int DataRunsMCB; } ;
struct TYPE_23__ {int HighestVCN; scalar_t__ MappingPairsOffset; } ;
struct TYPE_25__ {scalar_t__ Type; scalar_t__ Length; TYPE_3__ NonResident; } ;
struct TYPE_21__ {int ClusterCount; int BytesPerCluster; int BytesPerFileRecord; int BytesPerSector; } ;
struct TYPE_24__ {TYPE_1__ NtfsInfo; int FileRecLookasideList; } ;
struct TYPE_22__ {int HighestVCN; scalar_t__ MappingPairsOffset; } ;
struct TYPE_20__ {scalar_t__ Length; TYPE_2__ NonResident; int IsNonResident; } ;
typedef int RTL_BITMAP ;
typedef int PVOID ;
typedef int PULONG ;
typedef int * PUCHAR ;
typedef TYPE_4__* PNTFS_VCB ;
typedef TYPE_5__* PNTFS_ATTR_RECORD ;
typedef TYPE_6__* PNTFS_ATTR_CONTEXT ;
typedef int * PFILE_RECORD_HEADER ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef int LONGLONG ;


 scalar_t__ ALIGN_UP_BY (scalar_t__,int ) ;
 int ASSERT (int) ;
 int ATTR_RECORD_ALIGNMENT ;
 int AttributeData ;
 int AttributeDataLength (TYPE_19__*) ;
 scalar_t__ AttributeEnd ;
 int ConvertLargeMCBToDataRuns (int *,int *,int ,scalar_t__*) ;
 int DPRINT1 (char*,...) ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int * ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 int ExFreeToNPagedLookasideList (int *,int *) ;
 int FILE_RECORD_END ;
 int FindAttribute (TYPE_4__*,int *,int ,char*,int ,TYPE_6__**,int *) ;
 int FsRtlLookupLastLargeMcbEntry (int *,int*,int*) ;
 int FsRtlTruncateLargeMcb (int *,int) ;
 int NTFS_FILE_BITMAP ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int NtfsDumpDataRuns (int *,int ) ;
 int ROUND_UP (int,int ) ;
 int ReadAttribute (TYPE_4__*,TYPE_6__*,int ,int ,scalar_t__) ;
 int ReadFileRecord (TYPE_4__*,int ,int *) ;
 int ReleaseAttributeContext (TYPE_6__*) ;
 int RtlClearBits (int *,int,int) ;
 int RtlCopyMemory (int ,int *,scalar_t__) ;
 int RtlInitializeBitMap (int *,int ,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NO_MEMORY ;
 int STATUS_SUCCESS ;
 int SetFileRecordEnd (int *,TYPE_5__*,int ) ;
 int TAG_NTFS ;
 int ULONG_MAX ;
 int UpdateFileRecord (TYPE_4__*,int ,int *) ;
 int WriteAttribute (TYPE_4__*,TYPE_6__*,int ,int *,scalar_t__,scalar_t__*,int *) ;
 void* min (int,int) ;

NTSTATUS
FreeClusters(PNTFS_VCB Vcb,
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


    BitmapRecord = ExAllocateFromNPagedLookasideList(&Vcb->FileRecLookasideList);
    if (BitmapRecord == ((void*)0))
    {
        DPRINT1("Error: Unable to allocate memory for bitmap file record!\n");
        return STATUS_NO_MEMORY;
    }

    Status = ReadFileRecord(Vcb, NTFS_FILE_BITMAP, BitmapRecord);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("Error: Unable to read file record for bitmap!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    Status = FindAttribute(Vcb, BitmapRecord, AttributeData, L"", 0, &DataContext, ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("Error: Unable to find data attribute for bitmap file!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    BitmapDataSize = AttributeDataLength(DataContext->pRecord);
    BitmapDataSize = min(BitmapDataSize, ULONG_MAX);
    ASSERT((BitmapDataSize * 8) >= Vcb->NtfsInfo.ClusterCount);
    BitmapData = ExAllocatePoolWithTag(NonPagedPool, ROUND_UP(BitmapDataSize, Vcb->NtfsInfo.BytesPerSector), TAG_NTFS);
    if (BitmapData == ((void*)0))
    {
        DPRINT1("Error: Unable to allocate memory for bitmap file data!\n");
        ReleaseAttributeContext(DataContext);
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BitmapRecord);
        return 0;
    }

    ReadAttribute(Vcb, DataContext, 0, (PCHAR)BitmapData, (ULONG)BitmapDataSize);

    RtlInitializeBitMap(&Bitmap, (PULONG)BitmapData, Vcb->NtfsInfo.ClusterCount);


    while (ClustersLeftToFree > 0)
    {
        LONGLONG LargeVbn, LargeLbn;

        if (!FsRtlLookupLastLargeMcbEntry(&AttrContext->DataRunsMCB, &LargeVbn, &LargeLbn))
        {
            Status = STATUS_INVALID_PARAMETER;
            DPRINT1("DRIVER ERROR: FreeClusters called to free %lu clusters, which is %lu more clusters than are assigned to attribute!",
                    ClustersToFree,
                    ClustersLeftToFree);
            break;
        }

        if (LargeLbn != -1)
        {

            RtlClearBits(&Bitmap, LargeLbn, 1);
        }
        FsRtlTruncateLargeMcb(&AttrContext->DataRunsMCB, AttrContext->pRecord->NonResident.HighestVCN);


        AttrContext->pRecord->NonResident.HighestVCN = min(AttrContext->pRecord->NonResident.HighestVCN, AttrContext->pRecord->NonResident.HighestVCN - 1);
        ClustersLeftToFree--;
    }


    Status = WriteAttribute(Vcb, DataContext, 0, BitmapData, (ULONG)BitmapDataSize, &LengthWritten, FileRecord);
    if (!NT_SUCCESS(Status))
    {
        ReleaseAttributeContext(DataContext);
        ExFreePoolWithTag(BitmapData, TAG_NTFS);
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BitmapRecord);
        return Status;
    }

    ReleaseAttributeContext(DataContext);
    ExFreePoolWithTag(BitmapData, TAG_NTFS);
    ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BitmapRecord);




    RunBuffer = ExAllocatePoolWithTag(NonPagedPool, Vcb->NtfsInfo.BytesPerFileRecord, TAG_NTFS);
    if (!RunBuffer)
    {
        DPRINT1("ERROR: Couldn't allocate memory for data runs!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    ConvertLargeMCBToDataRuns(&AttrContext->DataRunsMCB, RunBuffer, Vcb->NtfsInfo.BytesPerCluster, &RunBufferSize);


    DestinationAttribute->NonResident.HighestVCN = AttrContext->pRecord->NonResident.HighestVCN;


    RtlCopyMemory((PVOID)((ULONG_PTR)DestinationAttribute + DestinationAttribute->NonResident.MappingPairsOffset),
                  RunBuffer,
                  RunBufferSize);


    if (NextAttribute->Type == AttributeEnd)
    {

        DestinationAttribute->Length = ALIGN_UP_BY(AttrContext->pRecord->NonResident.MappingPairsOffset + RunBufferSize,
                                                 ATTR_RECORD_ALIGNMENT);

        ASSERT(DestinationAttribute->Length <= AttrContext->pRecord->Length);

        AttrContext->pRecord->Length = DestinationAttribute->Length;


        NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)DestinationAttribute + DestinationAttribute->Length);
        SetFileRecordEnd(FileRecord, NextAttribute, FILE_RECORD_END);
    }


    Status = UpdateFileRecord(Vcb, AttrContext->FileMFTIndex, FileRecord);

    ExFreePoolWithTag(RunBuffer, TAG_NTFS);

    NtfsDumpDataRuns((PUCHAR)((ULONG_PTR)DestinationAttribute + DestinationAttribute->NonResident.MappingPairsOffset), 0);

    return Status;
}
