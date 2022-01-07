
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;
typedef struct TYPE_22__ TYPE_19__ ;


typedef int ULONG_PTR ;
typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_26__ {int QuadPart; } ;
struct TYPE_23__ {int BytesPerIndexRecord; int BytesPerCluster; } ;
struct TYPE_25__ {TYPE_1__ NtfsInfo; } ;
struct TYPE_24__ {int FileMFTIndex; TYPE_19__* pRecord; } ;
struct TYPE_22__ {scalar_t__ IsNonResident; } ;
typedef int RTL_BITMAP ;
typedef int* PULONGLONG ;
typedef int* PULONG ;
typedef int PUCHAR ;
typedef TYPE_2__* PNTFS_ATTR_CONTEXT ;
typedef int PFILE_RECORD_HEADER ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef TYPE_4__ LARGE_INTEGER ;


 int ALIGN_UP (int,int ) ;
 scalar_t__ ALIGN_UP_BY (int ,int) ;
 int ATTR_RECORD_ALIGNMENT ;
 int AttributeBitmap ;
 int AttributeDataLength (TYPE_19__*) ;
 int DPRINT (char*,int) ;
 int DPRINT1 (char*,...) ;
 int * ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 int FindAttribute (TYPE_3__*,int ,int ,char*,int,TYPE_2__**,int*) ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int ReadAttribute (TYPE_3__*,TYPE_2__*,int ,int ,int) ;
 int ReleaseAttributeContext (TYPE_2__*) ;
 int RtlInitializeBitMap (int *,int*,int) ;
 int RtlSetBits (int *,int,int) ;
 int RtlZeroMemory (int*,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_NOT_IMPLEMENTED ;
 int SetNonResidentAttributeDataLength (TYPE_3__*,TYPE_2__*,int,int ,TYPE_4__*) ;
 int SetResidentAttributeDataLength (TYPE_3__*,TYPE_2__*,int,int ,TYPE_4__*) ;
 int TAG_NTFS ;
 int UpdateFileRecord (TYPE_3__*,int ,int ) ;
 int WriteAttribute (TYPE_3__*,TYPE_2__*,int ,int const,int,int*,int ) ;

NTSTATUS
AllocateIndexNode(PDEVICE_EXTENSION DeviceExt,
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

    DPRINT1("AllocateIndexNode(%p, %p, %lu, %p, %lu, %p) called.\n", DeviceExt,
            FileRecord,
            IndexBufferSize,
            IndexAllocationCtx,
            IndexAllocationOffset,
            NewVCN);


    IndexAllocationLength = AttributeDataLength(IndexAllocationCtx->pRecord);


    Status = FindAttribute(DeviceExt,
                           FileRecord,
                           AttributeBitmap,
                           L"$I30",
                           4,
                           &BitmapCtx,
                           &BitmapOffset);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("FIXME: Need to add bitmap attribute!\n");
        return STATUS_NOT_IMPLEMENTED;
    }


    BitmapLength = AttributeDataLength(BitmapCtx->pRecord);

    NextNodeNumber = IndexAllocationLength / DeviceExt->NtfsInfo.BytesPerIndexRecord;






    BytesNeeded = NextNodeNumber / 8;
    BytesNeeded++;


    BytesNeeded = ALIGN_UP(BytesNeeded, ATTR_RECORD_ALIGNMENT);



    BitmapMem = ExAllocatePoolWithTag(NonPagedPool, BytesNeeded + sizeof(ULONG), TAG_NTFS);
    if (!BitmapMem)
    {
        DPRINT1("Error: failed to allocate bitmap!");
        ReleaseAttributeContext(BitmapCtx);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    BitmapPtr = (PULONG)ALIGN_UP_BY((ULONG_PTR)BitmapMem, sizeof(ULONG));

    RtlZeroMemory(BitmapPtr, BytesNeeded);


    Status = ReadAttribute(DeviceExt, BitmapCtx, 0, (PCHAR)BitmapPtr, BitmapLength);


    RtlInitializeBitMap(&Bitmap, BitmapPtr, NextNodeNumber);


    if (BytesNeeded > BitmapLength)
    {


        DataSize.QuadPart = BytesNeeded;
        if (BitmapCtx->pRecord->IsNonResident)
        {
            Status = SetNonResidentAttributeDataLength(DeviceExt,
                                                       BitmapCtx,
                                                       BitmapOffset,
                                                       FileRecord,
                                                       &DataSize);
        }
        else
        {
            Status = SetResidentAttributeDataLength(DeviceExt,
                                                    BitmapCtx,
                                                    BitmapOffset,
                                                    FileRecord,
                                                    &DataSize);
        }
        if (!NT_SUCCESS(Status))
        {
            DPRINT1("ERROR: Failed to set length of bitmap attribute!\n");
            ReleaseAttributeContext(BitmapCtx);
            return Status;
        }
    }


    DataSize.QuadPart = IndexAllocationLength + IndexBufferSize;
    Status = SetNonResidentAttributeDataLength(DeviceExt,
                                               IndexAllocationCtx,
                                               IndexAllocationOffset,
                                               FileRecord,
                                               &DataSize);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Failed to set length of index allocation!\n");
        ReleaseAttributeContext(BitmapCtx);
        return Status;
    }


    Status = UpdateFileRecord(DeviceExt, IndexAllocationCtx->FileMFTIndex, FileRecord);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Failed to update file record!\n");
        ReleaseAttributeContext(BitmapCtx);
        return Status;
    }


    RtlSetBits(&Bitmap, NextNodeNumber, 1);


    Status = WriteAttribute(DeviceExt,
                            BitmapCtx,
                            0,
                            (const PUCHAR)BitmapPtr,
                            BytesNeeded,
                            &BytesWritten,
                            FileRecord);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Unable to write to $I30 bitmap attribute!\n");
    }


    *NewVCN = NextNodeNumber * (IndexBufferSize / DeviceExt->NtfsInfo.BytesPerCluster);

    DPRINT("New VCN: %I64u\n", *NewVCN);

    ExFreePoolWithTag(BitmapMem, TAG_NTFS);
    ReleaseAttributeContext(BitmapCtx);

    return Status;
}
