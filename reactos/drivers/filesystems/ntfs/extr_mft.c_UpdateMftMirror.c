
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_15__ {int pRecord; } ;
struct TYPE_13__ {int BytesPerFileRecord; } ;
struct TYPE_14__ {int FileRecLookasideList; TYPE_1__ NtfsInfo; int MasterFileTable; } ;
typedef int PUCHAR ;
typedef TYPE_2__* PNTFS_VCB ;
typedef TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef int PFILE_RECORD_HEADER ;
typedef scalar_t__ PCHAR ;
typedef int NTSTATUS ;


 int ASSERT (int) ;
 int AttributeData ;
 int AttributeDataLength (int ) ;
 int DPRINT1 (char*) ;
 int ExAllocateFromNPagedLookasideList (int *) ;
 scalar_t__ ExAllocatePoolWithTag (int ,int,int ) ;
 int ExFreePoolWithTag (scalar_t__,int ) ;
 int ExFreeToNPagedLookasideList (int *,int ) ;
 int FindAttribute (TYPE_2__*,int ,int ,char*,int ,TYPE_3__**,int *) ;
 int NTFS_FILE_MFTMIRR ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 scalar_t__ ReadAttribute (TYPE_2__*,TYPE_3__*,int ,scalar_t__,scalar_t__) ;
 int ReadFileRecord (TYPE_2__*,int ,int ) ;
 int ReleaseAttributeContext (TYPE_3__*) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_UNSUCCESSFUL ;
 int TAG_NTFS ;
 int ULONG_MAX ;
 int WriteAttribute (TYPE_2__*,TYPE_3__*,int ,int ,int,scalar_t__*,int ) ;

NTSTATUS
UpdateMftMirror(PNTFS_VCB Vcb)
{
    PFILE_RECORD_HEADER MirrorFileRecord;
    PNTFS_ATTR_CONTEXT MirrDataContext;
    PNTFS_ATTR_CONTEXT MftDataContext;
    PCHAR DataBuffer;
    ULONGLONG DataLength;
    NTSTATUS Status;
    ULONG BytesRead;
    ULONG LengthWritten;


    MirrorFileRecord = ExAllocateFromNPagedLookasideList(&Vcb->FileRecLookasideList);
    if (!MirrorFileRecord)
    {
        DPRINT1("Error: Failed to allocate memory for $MFTMirr!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    Status = ReadFileRecord(Vcb, NTFS_FILE_MFTMIRR, MirrorFileRecord);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Failed to read $MFTMirr!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return Status;
    }


    Status = FindAttribute(Vcb, MirrorFileRecord, AttributeData, L"", 0, &MirrDataContext, ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Couldn't find $DATA attribute!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return Status;
    }


    Status = FindAttribute(Vcb, Vcb->MasterFileTable, AttributeData, L"", 0, &MftDataContext, ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Couldn't find $DATA attribute!\n");
        ReleaseAttributeContext(MirrDataContext);
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return Status;
    }


    DataLength = AttributeDataLength(MirrDataContext->pRecord);

    ASSERT(DataLength % Vcb->NtfsInfo.BytesPerFileRecord == 0);


    DataBuffer = ExAllocatePoolWithTag(NonPagedPool, DataLength, TAG_NTFS);
    if (!DataBuffer)
    {
        DPRINT1("Error: Couldn't allocate memory for $DATA buffer!\n");
        ReleaseAttributeContext(MftDataContext);
        ReleaseAttributeContext(MirrDataContext);
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    ASSERT(DataLength < ULONG_MAX);


    BytesRead = ReadAttribute(Vcb, MftDataContext, 0, DataBuffer, (ULONG)DataLength);
    if (BytesRead != (ULONG)DataLength)
    {
        DPRINT1("Error: Failed to read $DATA for $MFTMirr!\n");
        ReleaseAttributeContext(MftDataContext);
        ReleaseAttributeContext(MirrDataContext);
        ExFreePoolWithTag(DataBuffer, TAG_NTFS);
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return STATUS_UNSUCCESSFUL;
    }


    Status = WriteAttribute(Vcb,
                             MirrDataContext,
                             0,
                             (PUCHAR)DataBuffer,
                             DataLength,
                             &LengthWritten,
                             MirrorFileRecord);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Failed to write $DATA attribute of $MFTMirr!\n");
    }


    ReleaseAttributeContext(MftDataContext);
    ReleaseAttributeContext(MirrDataContext);
    ExFreePoolWithTag(DataBuffer, TAG_NTFS);
    ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MirrorFileRecord);

    return Status;
}
