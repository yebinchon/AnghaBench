
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_40__ TYPE_6__ ;
typedef struct TYPE_39__ TYPE_5__ ;
typedef struct TYPE_38__ TYPE_4__ ;
typedef struct TYPE_37__ TYPE_3__ ;
typedef struct TYPE_36__ TYPE_33__ ;
typedef struct TYPE_35__ TYPE_2__ ;
typedef struct TYPE_34__ TYPE_1__ ;


typedef scalar_t__ ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_40__ {int QuadPart; scalar_t__ LowPart; } ;
struct TYPE_34__ {scalar_t__ BytesPerFileRecord; } ;
struct TYPE_39__ {scalar_t__ MftDataOffset; int DirResource; int FileRecLookasideList; TYPE_4__* MasterFileTable; TYPE_2__* VolumeFcb; TYPE_3__* MFTContext; TYPE_1__ NtfsInfo; } ;
struct TYPE_38__ {scalar_t__ Flags; } ;
struct TYPE_37__ {TYPE_33__* pRecord; } ;
struct TYPE_36__ {scalar_t__ IsNonResident; } ;
struct TYPE_35__ {scalar_t__ MFTIndex; } ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef TYPE_4__* PFILE_RECORD_HEADER ;
typedef TYPE_5__* PDEVICE_EXTENSION ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef scalar_t__ LONGLONG ;
typedef TYPE_6__ LARGE_INTEGER ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ ALIGN_UP_BY (scalar_t__,int) ;
 int ATTR_RECORD_ALIGNMENT ;
 int AttributeBitmap ;
 scalar_t__ AttributeDataLength (TYPE_33__*) ;
 int DPRINT1 (char*,...) ;
 int ExAcquireResourceExclusiveLite (int *,scalar_t__) ;
 scalar_t__ ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int ExFreePoolWithTag (scalar_t__,int ) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_4__*) ;
 int ExReleaseResourceLite (int *) ;
 int FindAttribute (TYPE_5__*,TYPE_4__*,int ,char*,int ,TYPE_3__**,scalar_t__*) ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 TYPE_4__* NtfsCreateEmptyFileRecord (TYPE_5__*) ;
 int NtfsDumpFileAttributes (TYPE_5__*,TYPE_4__*) ;
 scalar_t__ ReadAttribute (TYPE_5__*,TYPE_3__*,int ,int ,scalar_t__) ;
 int ReleaseAttributeContext (TYPE_3__*) ;
 int RtlZeroMemory (scalar_t__,scalar_t__) ;
 int STATUS_CANT_WAIT ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int SetNonResidentAttributeDataLength (TYPE_5__*,TYPE_3__*,scalar_t__,TYPE_4__*,TYPE_6__*) ;
 int SetResidentAttributeDataLength (TYPE_5__*,TYPE_3__*,scalar_t__,TYPE_4__*,TYPE_6__*) ;
 int TAG_NTFS ;
 int UpdateFileRecord (TYPE_5__*,scalar_t__,TYPE_4__*) ;
 int UpdateMftMirror (TYPE_5__*) ;
 int WriteAttribute (TYPE_5__*,TYPE_3__*,int ,scalar_t__,scalar_t__,scalar_t__*,TYPE_4__*) ;
 scalar_t__ max (scalar_t__,scalar_t__) ;

NTSTATUS
IncreaseMftSize(PDEVICE_EXTENSION Vcb, BOOLEAN CanWait)
{
    PNTFS_ATTR_CONTEXT BitmapContext;
    LARGE_INTEGER BitmapSize;
    LARGE_INTEGER DataSize;
    LONGLONG BitmapSizeDifference;
    ULONG NewRecords = ATTR_RECORD_ALIGNMENT * 8;
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

    DPRINT1("IncreaseMftSize(%p, %s)\n", Vcb, CanWait ? "TRUE" : "FALSE");


    if (!ExAcquireResourceExclusiveLite(&(Vcb->DirResource), CanWait))
    {
        return STATUS_CANT_WAIT;
    }


    BlankFileRecord = NtfsCreateEmptyFileRecord(Vcb);
    if (!BlankFileRecord)
    {
        DPRINT1("Error: Unable to create empty file record!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    BlankFileRecord->Flags = 0;


    Status = FindAttribute(Vcb, Vcb->MasterFileTable, AttributeBitmap, L"", 0, &BitmapContext, ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Couldn't find $BITMAP attribute of Mft!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
        ExReleaseResourceLite(&(Vcb->DirResource));
        return Status;
    }


    BitmapSize.QuadPart = AttributeDataLength(BitmapContext->pRecord);


    DataSize.QuadPart = AttributeDataLength(Vcb->MFTContext->pRecord) + DataSizeDifference;


    FirstNewMftIndex = AttributeDataLength(Vcb->MFTContext->pRecord) / Vcb->NtfsInfo.BytesPerFileRecord;


    BitmapBytes = DataSize.QuadPart / Vcb->NtfsInfo.BytesPerFileRecord / 8;
    if ((DataSize.QuadPart / Vcb->NtfsInfo.BytesPerFileRecord) % 8 != 0)
        BitmapBytes++;


    BitmapBytes = ALIGN_UP_BY(BitmapBytes, ATTR_RECORD_ALIGNMENT);


    BitmapSizeDifference = BitmapBytes - BitmapSize.QuadPart;
    NewBitmapSize = max(BitmapSize.QuadPart + BitmapSizeDifference, BitmapSize.QuadPart);


    BitmapBuffer = ExAllocatePoolWithTag(NonPagedPool, NewBitmapSize, TAG_NTFS);
    if (!BitmapBuffer)
    {
        DPRINT1("ERROR: Unable to allocate memory for bitmap attribute!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
        ExReleaseResourceLite(&(Vcb->DirResource));
        ReleaseAttributeContext(BitmapContext);
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    RtlZeroMemory(BitmapBuffer, NewBitmapSize);


    BytesRead = ReadAttribute(Vcb,
                              BitmapContext,
                              0,
                              (PCHAR)BitmapBuffer,
                              BitmapSize.LowPart);
    if (BytesRead != BitmapSize.LowPart)
    {
        DPRINT1("ERROR: Bytes read != Bitmap size!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
        ExReleaseResourceLite(&(Vcb->DirResource));
        ExFreePoolWithTag(BitmapBuffer, TAG_NTFS);
        ReleaseAttributeContext(BitmapContext);
        return STATUS_INVALID_PARAMETER;
    }


    Status = SetNonResidentAttributeDataLength(Vcb, Vcb->MFTContext, Vcb->MftDataOffset, Vcb->MasterFileTable, &DataSize);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Failed to set size of $MFT data attribute!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
        ExReleaseResourceLite(&(Vcb->DirResource));
        ExFreePoolWithTag(BitmapBuffer, TAG_NTFS);
        ReleaseAttributeContext(BitmapContext);
        return Status;
    }


    ReleaseAttributeContext(BitmapContext);
    Status = FindAttribute(Vcb, Vcb->MasterFileTable, AttributeBitmap, L"", 0, &BitmapContext, &BitmapOffset);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Couldn't find $BITMAP attribute of Mft!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
        ExReleaseResourceLite(&(Vcb->DirResource));
        return Status;
    }


    if (BitmapSizeDifference > 0)
    {

        BitmapSize.QuadPart = NewBitmapSize;
        if (BitmapContext->pRecord->IsNonResident)
            Status = SetNonResidentAttributeDataLength(Vcb, BitmapContext, BitmapOffset, Vcb->MasterFileTable, &BitmapSize);
        else
            Status = SetResidentAttributeDataLength(Vcb, BitmapContext, BitmapOffset, Vcb->MasterFileTable, &BitmapSize);

        if (!NT_SUCCESS(Status))
        {
            DPRINT1("ERROR: Failed to set size of bitmap attribute!\n");
            ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
            ExReleaseResourceLite(&(Vcb->DirResource));
            ExFreePoolWithTag(BitmapBuffer, TAG_NTFS);
            ReleaseAttributeContext(BitmapContext);
            return Status;
        }
    }

    NtfsDumpFileAttributes(Vcb, Vcb->MasterFileTable);


    Status = UpdateFileRecord(Vcb, Vcb->VolumeFcb->MFTIndex, Vcb->MasterFileTable);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Failed to update $MFT file record!\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
        ExReleaseResourceLite(&(Vcb->DirResource));
        ExFreePoolWithTag(BitmapBuffer, TAG_NTFS);
        ReleaseAttributeContext(BitmapContext);
        return Status;
    }


    Status = WriteAttribute(Vcb, BitmapContext, 0, BitmapBuffer, NewBitmapSize, &LengthWritten, Vcb->MasterFileTable);
    if (!NT_SUCCESS(Status))
    {
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
        ExReleaseResourceLite(&(Vcb->DirResource));
        ExFreePoolWithTag(BitmapBuffer, TAG_NTFS);
        ReleaseAttributeContext(BitmapContext);
        DPRINT1("ERROR: Couldn't write to bitmap attribute of $MFT!\n");
        return Status;
    }


    for (i = 0; i < NewRecords; i++)
    {
        Status = UpdateFileRecord(Vcb, FirstNewMftIndex + i, BlankFileRecord);
        if (!NT_SUCCESS(Status))
        {
            DPRINT1("ERROR: Failed to write blank file record!\n");
            ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
            ExReleaseResourceLite(&(Vcb->DirResource));
            ExFreePoolWithTag(BitmapBuffer, TAG_NTFS);
            ReleaseAttributeContext(BitmapContext);
            return Status;
        }
    }


    Status = UpdateMftMirror(Vcb);


    ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, BlankFileRecord);
    ExReleaseResourceLite(&(Vcb->DirResource));
    ExFreePoolWithTag(BitmapBuffer, TAG_NTFS);
    ReleaseAttributeContext(BitmapContext);

    return Status;
}
