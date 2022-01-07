
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_22__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
typedef TYPE_2__ UNICODE_STRING ;
typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_21__ {scalar_t__ BytesPerSector; } ;
struct TYPE_27__ {int FileRecLookasideList; TYPE_1__ NtfsInfo; } ;
struct TYPE_26__ {scalar_t__ FsContext; } ;
struct TYPE_25__ {int pRecord; } ;
struct TYPE_24__ {scalar_t__ Type; int NameLength; scalar_t__ NameOffset; } ;
struct TYPE_23__ {int Stream; int MFTIndex; } ;
typedef scalar_t__ PWCHAR ;
typedef scalar_t__* PULONG ;
typedef scalar_t__ PUCHAR ;
typedef TYPE_3__* PNTFS_FCB ;
typedef TYPE_4__* PNTFS_ATTR_RECORD ;
typedef TYPE_5__* PNTFS_ATTR_CONTEXT ;
typedef int * PFILE_RECORD_HEADER ;
typedef TYPE_6__* PFILE_OBJECT ;
typedef TYPE_7__* PDEVICE_EXTENSION ;
typedef int * PCHAR ;
typedef int NTSTATUS ;
typedef int FIND_ATTR_CONTXT ;
typedef scalar_t__ BOOLEAN ;


 scalar_t__ AttributeAllocatedLength (int ) ;
 scalar_t__ AttributeData ;
 scalar_t__ AttributeDataLength (int ) ;
 int DPRINT (char*,TYPE_7__*,...) ;
 int DPRINT1 (char*,...) ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int * ExAllocatePoolWithTag (int ,scalar_t__,int ) ;
 int ExFreePoolWithTag (int *,int ) ;
 int ExFreeToNPagedLookasideList (int *,int *) ;
 scalar_t__ FALSE ;
 int FindAttribute (TYPE_7__*,int *,scalar_t__,int ,int ,TYPE_5__**,int *) ;
 int FindCloseAttribute (int *) ;
 int FindFirstAttribute (int *,TYPE_7__*,int *,scalar_t__,TYPE_4__**) ;
 int FindNextAttribute (int *,TYPE_4__**) ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NonPagedPool ;
 scalar_t__ NtfsFCBIsCompressed (TYPE_3__*) ;
 scalar_t__ ROUND_DOWN (scalar_t__,scalar_t__) ;
 scalar_t__ ROUND_UP (scalar_t__,scalar_t__) ;
 scalar_t__ ReadAttribute (TYPE_7__*,TYPE_5__*,scalar_t__,int *,scalar_t__) ;
 int ReadFileRecord (TYPE_7__*,int ,int *) ;
 int ReleaseAttributeContext (TYPE_5__*) ;
 int RtlCopyMemory (scalar_t__,int *,scalar_t__) ;
 int RtlZeroMemory (scalar_t__,scalar_t__) ;
 int STATUS_END_OF_FILE ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_SUCCESS ;
 int TAG_NTFS ;
 scalar_t__ TRUE ;
 int UNIMPLEMENTED ;
 int wcslen (int ) ;

__attribute__((used)) static
NTSTATUS
NtfsReadFile(PDEVICE_EXTENSION DeviceExt,
             PFILE_OBJECT FileObject,
             PUCHAR Buffer,
             ULONG Length,
             ULONG ReadOffset,
             ULONG IrpFlags,
             PULONG LengthRead)
{
    NTSTATUS Status = STATUS_SUCCESS;
    PNTFS_FCB Fcb;
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_ATTR_CONTEXT DataContext;
    ULONG RealLength;
    ULONG RealReadOffset;
    ULONG RealLengthRead;
    ULONG ToRead;
    BOOLEAN AllocatedBuffer = FALSE;
    PCHAR ReadBuffer = (PCHAR)Buffer;
    ULONGLONG StreamSize;

    DPRINT("NtfsReadFile(%p, %p, %p, %lu, %lu, %lx, %p)\n", DeviceExt, FileObject, Buffer, Length, ReadOffset, IrpFlags, LengthRead);

    *LengthRead = 0;

    if (Length == 0)
    {
        DPRINT1("Null read!\n");
        return STATUS_SUCCESS;
    }

    Fcb = (PNTFS_FCB)FileObject->FsContext;

    if (NtfsFCBIsCompressed(Fcb))
    {
        DPRINT1("Compressed file!\n");
        UNIMPLEMENTED;
        return STATUS_NOT_IMPLEMENTED;
    }

    FileRecord = ExAllocateFromNPagedLookasideList(&DeviceExt->FileRecLookasideList);
    if (FileRecord == ((void*)0))
    {
        DPRINT1("Not enough memory!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = ReadFileRecord(DeviceExt, Fcb->MFTIndex, FileRecord);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("Can't find record!\n");
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }


    Status = FindAttribute(DeviceExt, FileRecord, AttributeData, Fcb->Stream, wcslen(Fcb->Stream), &DataContext, ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        NTSTATUS BrowseStatus;
        FIND_ATTR_CONTXT Context;
        PNTFS_ATTR_RECORD Attribute;

        DPRINT1("No '%S' data stream associated with file!\n", Fcb->Stream);

        BrowseStatus = FindFirstAttribute(&Context, DeviceExt, FileRecord, FALSE, &Attribute);
        while (NT_SUCCESS(BrowseStatus))
        {
            if (Attribute->Type == AttributeData)
            {
                UNICODE_STRING Name;

                Name.Length = Attribute->NameLength * sizeof(WCHAR);
                Name.MaximumLength = Name.Length;
                Name.Buffer = (PWCHAR)((ULONG_PTR)Attribute + Attribute->NameOffset);
                DPRINT1("Data stream: '%wZ' available\n", &Name);
            }

            BrowseStatus = FindNextAttribute(&Context, &Attribute);
        }
        FindCloseAttribute(&Context);

        ReleaseAttributeContext(DataContext);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    StreamSize = AttributeDataLength(DataContext->pRecord);
    if (ReadOffset >= StreamSize)
    {
        DPRINT1("Reading beyond stream end!\n");
        ReleaseAttributeContext(DataContext);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return STATUS_END_OF_FILE;
    }

    ToRead = Length;
    if (ReadOffset + Length > StreamSize)
        ToRead = StreamSize - ReadOffset;

    RealReadOffset = ReadOffset;
    RealLength = ToRead;

    if ((ReadOffset % DeviceExt->NtfsInfo.BytesPerSector) != 0 || (ToRead % DeviceExt->NtfsInfo.BytesPerSector) != 0)
    {
        RealReadOffset = ROUND_DOWN(ReadOffset, DeviceExt->NtfsInfo.BytesPerSector);
        RealLength = ROUND_UP(ToRead, DeviceExt->NtfsInfo.BytesPerSector);

        if (RealLength + RealReadOffset < ReadOffset + Length)
        {
            if (RealReadOffset + RealLength + DeviceExt->NtfsInfo.BytesPerSector <= AttributeAllocatedLength(DataContext->pRecord))
                RealLength += DeviceExt->NtfsInfo.BytesPerSector;
        }


        ReadBuffer = ExAllocatePoolWithTag(NonPagedPool, RealLength, TAG_NTFS);
        if (ReadBuffer == ((void*)0))
        {
            DPRINT1("Not enough memory!\n");
            ReleaseAttributeContext(DataContext);
            ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
            return STATUS_INSUFFICIENT_RESOURCES;
        }
        AllocatedBuffer = TRUE;
    }

    DPRINT("Effective read: %lu at %lu for stream '%S'\n", RealLength, RealReadOffset, Fcb->Stream);
    RealLengthRead = ReadAttribute(DeviceExt, DataContext, RealReadOffset, (PCHAR)ReadBuffer, RealLength);
    if (RealLengthRead == 0)
    {
        DPRINT1("Read failure!\n");
        ReleaseAttributeContext(DataContext);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        if (AllocatedBuffer)
        {
            ExFreePoolWithTag(ReadBuffer, TAG_NTFS);
        }
        return Status;
    }

    ReleaseAttributeContext(DataContext);
    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);

    *LengthRead = ToRead;

    DPRINT("%lu got read\n", *LengthRead);

    if (AllocatedBuffer)
    {
        RtlCopyMemory(Buffer, ReadBuffer + (ReadOffset - RealReadOffset), ToRead);
    }

    if (ToRead != Length)
    {
        RtlZeroMemory(Buffer + ToRead, Length - ToRead);
    }

    if (AllocatedBuffer)
    {
        ExFreePoolWithTag(ReadBuffer, TAG_NTFS);
    }

    return STATUS_SUCCESS;
}
