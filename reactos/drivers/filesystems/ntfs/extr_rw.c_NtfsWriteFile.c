
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_33__ TYPE_8__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_28__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_33__ {scalar_t__ QuadPart; } ;
struct TYPE_32__ {scalar_t__ FsContext; } ;
struct TYPE_31__ {int pRecord; } ;
struct TYPE_30__ {scalar_t__ Type; int NameLength; scalar_t__ NameOffset; } ;
struct TYPE_29__ {int Flags; scalar_t__ DirectoryFileReferenceNumber; int NameLength; int FileRecLookasideList; int Vcb; scalar_t__ Name; int Stream; int ObjectName; int MFTIndex; int PathName; } ;
typedef scalar_t__ PWCHAR ;
typedef scalar_t__* PULONG ;
typedef int * PUCHAR ;
typedef TYPE_2__* PNTFS_FCB ;
typedef TYPE_3__* PNTFS_ATTR_RECORD ;
typedef TYPE_4__* PNTFS_ATTR_CONTEXT ;
typedef int * PFILE_RECORD_HEADER ;
typedef TYPE_5__* PFILE_OBJECT ;
typedef TYPE_2__* PFILENAME_ATTRIBUTE ;
typedef TYPE_2__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef TYPE_8__ LARGE_INTEGER ;
typedef int FIND_ATTR_CONTXT ;
typedef scalar_t__ BOOLEAN ;


 int ASSERT (TYPE_2__*) ;
 scalar_t__ AttributeAllocatedLength (int ) ;
 scalar_t__ AttributeData ;
 scalar_t__ AttributeDataLength (int ) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*,...) ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,int *) ;
 int FALSE ;
 int FCB_IS_VOLUME ;
 int FindAttribute (TYPE_2__*,int *,scalar_t__,int ,int ,TYPE_4__**,scalar_t__*) ;
 int FindCloseAttribute (int *) ;
 int FindFirstAttribute (int *,TYPE_2__*,int *,int ,TYPE_3__**) ;
 int FindNextAttribute (int *,TYPE_3__**) ;
 TYPE_2__* GetBestFileNameFromRecord (int ,int *) ;
 scalar_t__ IRP_PAGING_IO ;
 scalar_t__ NTFS_MFT_MASK ;
 scalar_t__ NT_SUCCESS (int ) ;
 scalar_t__ NtfsFCBIsCompressed (TYPE_2__*) ;
 int ReadFileRecord (TYPE_2__*,int ,int *) ;
 int ReleaseAttributeContext (TYPE_4__*) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_SUCCESS ;
 int STATUS_UNEXPECTED_IO_ERROR ;
 int SetAttributeDataLength (TYPE_5__*,TYPE_2__*,TYPE_4__*,scalar_t__,int *,TYPE_8__*) ;
 int UNIMPLEMENTED ;
 int UpdateFileNameRecord (int ,scalar_t__,TYPE_1__*,int ,scalar_t__,scalar_t__,scalar_t__) ;
 int WriteAttribute (TYPE_2__*,TYPE_4__*,scalar_t__,int * const,scalar_t__,scalar_t__*,int *) ;
 int wcslen (int ) ;

NTSTATUS NtfsWriteFile(PDEVICE_EXTENSION DeviceExt,
                       PFILE_OBJECT FileObject,
                       const PUCHAR Buffer,
                       ULONG Length,
                       ULONG WriteOffset,
                       ULONG IrpFlags,
                       BOOLEAN CaseSensitive,
                       PULONG LengthWritten)
{
    NTSTATUS Status = STATUS_NOT_IMPLEMENTED;
    PNTFS_FCB Fcb;
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_ATTR_CONTEXT DataContext;
    ULONG AttributeOffset;
    ULONGLONG StreamSize;

    DPRINT("NtfsWriteFile(%p, %p, %p, %lu, %lu, %x, %s, %p)\n",
           DeviceExt,
           FileObject,
           Buffer,
           Length,
           WriteOffset,
           IrpFlags,
           (CaseSensitive ? "TRUE" : "FALSE"),
           LengthWritten);

    *LengthWritten = 0;

    ASSERT(DeviceExt);

    if (Length == 0)
    {
        if (Buffer == ((void*)0))
            return STATUS_SUCCESS;
        else
            return STATUS_INVALID_PARAMETER;
    }


    Fcb = (PNTFS_FCB)FileObject->FsContext;
    ASSERT(Fcb);

    DPRINT("Fcb->PathName: %wS\n", Fcb->PathName);
    DPRINT("Fcb->ObjectName: %wS\n", Fcb->ObjectName);


    if (NtfsFCBIsCompressed(Fcb))
    {
        DPRINT("Compressed file!\n");
        UNIMPLEMENTED;
        return STATUS_NOT_IMPLEMENTED;
    }


    FileRecord = ExAllocateFromNPagedLookasideList(&DeviceExt->FileRecLookasideList);
    if (FileRecord == ((void*)0))
    {
        DPRINT1("Not enough memory! Can't write %wS!\n", Fcb->PathName);
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    DPRINT("Reading file record...\n");
    Status = ReadFileRecord(DeviceExt, Fcb->MFTIndex, FileRecord);
    if (!NT_SUCCESS(Status))
    {

        DPRINT1("Can't find record for %wS!\n", Fcb->ObjectName);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    DPRINT("Found record for %wS\n", Fcb->ObjectName);


    DPRINT("Finding Data Attribute...\n");
    Status = FindAttribute(DeviceExt, FileRecord, AttributeData, Fcb->Stream, wcslen(Fcb->Stream), &DataContext,
                           &AttributeOffset);


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

    DPRINT("WriteOffset: %lu\tStreamSize: %I64u\n", WriteOffset, StreamSize);


    if (WriteOffset + Length > StreamSize)
    {

        if (!(Fcb->Flags & FCB_IS_VOLUME) &&
            !(IrpFlags & IRP_PAGING_IO))
        {
            LARGE_INTEGER DataSize;
            ULONGLONG AllocationSize;
            PFILENAME_ATTRIBUTE fileNameAttribute;
            ULONGLONG ParentMFTId;
            UNICODE_STRING filename;

            DataSize.QuadPart = WriteOffset + Length;


            Status = SetAttributeDataLength(FileObject, Fcb, DataContext, AttributeOffset, FileRecord, &DataSize);
            if (!NT_SUCCESS(Status))
            {
                ReleaseAttributeContext(DataContext);
                ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
                *LengthWritten = 0;
                return Status;
            }

            AllocationSize = AttributeAllocatedLength(DataContext->pRecord);




            fileNameAttribute = GetBestFileNameFromRecord(Fcb->Vcb, FileRecord);
            ASSERT(fileNameAttribute);

            ParentMFTId = fileNameAttribute->DirectoryFileReferenceNumber & NTFS_MFT_MASK;

            filename.Buffer = fileNameAttribute->Name;
            filename.Length = fileNameAttribute->NameLength * sizeof(WCHAR);
            filename.MaximumLength = filename.Length;

            Status = UpdateFileNameRecord(Fcb->Vcb,
                                          ParentMFTId,
                                          &filename,
                                          FALSE,
                                          DataSize.QuadPart,
                                          AllocationSize,
                                          CaseSensitive);

        }
        else
        {

            ReleaseAttributeContext(DataContext);
            ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
            *LengthWritten = 0;
            return STATUS_ACCESS_DENIED;
        }
    }

    DPRINT("Length: %lu\tWriteOffset: %lu\tStreamSize: %I64u\n", Length, WriteOffset, StreamSize);


    Status = WriteAttribute(DeviceExt, DataContext, WriteOffset, Buffer, Length, LengthWritten, FileRecord);


    if (!NT_SUCCESS(Status))
    {
        DPRINT1("Write failure!\n");
        ReleaseAttributeContext(DataContext);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);

        return Status;
    }


    if (*LengthWritten != Length)
    {
        DPRINT1("\a\tNTFS DRIVER ERROR: length written (%lu) differs from requested (%lu), but no error was indicated!\n",
            *LengthWritten, Length);
        Status = STATUS_UNEXPECTED_IO_ERROR;
    }

    ReleaseAttributeContext(DataContext);
    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);

    return Status;
}
