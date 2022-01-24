#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_5__ ;
typedef  struct TYPE_31__   TYPE_4__ ;
typedef  struct TYPE_30__   TYPE_3__ ;
typedef  struct TYPE_29__   TYPE_2__ ;
typedef  struct TYPE_28__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_28__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_33__ {scalar_t__ QuadPart; } ;
struct TYPE_32__ {scalar_t__ FsContext; } ;
struct TYPE_31__ {int /*<<< orphan*/  pRecord; } ;
struct TYPE_30__ {scalar_t__ Type; int NameLength; scalar_t__ NameOffset; } ;
struct TYPE_29__ {int Flags; scalar_t__ DirectoryFileReferenceNumber; int NameLength; int /*<<< orphan*/  FileRecLookasideList; int /*<<< orphan*/  Vcb; scalar_t__ Name; int /*<<< orphan*/  Stream; int /*<<< orphan*/  ObjectName; int /*<<< orphan*/  MFTIndex; int /*<<< orphan*/  PathName; } ;
typedef  scalar_t__ PWCHAR ;
typedef  scalar_t__* PULONG ;
typedef  int /*<<< orphan*/ * PUCHAR ;
typedef  TYPE_2__* PNTFS_FCB ;
typedef  TYPE_3__* PNTFS_ATTR_RECORD ;
typedef  TYPE_4__* PNTFS_ATTR_CONTEXT ;
typedef  int /*<<< orphan*/ * PFILE_RECORD_HEADER ;
typedef  TYPE_5__* PFILE_OBJECT ;
typedef  TYPE_2__* PFILENAME_ATTRIBUTE ;
typedef  TYPE_2__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_8__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  FIND_ATTR_CONTXT ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ AttributeData ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FCB_IS_VOLUME ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_4__**,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_3__**) ; 
 TYPE_2__* FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ IRP_PAGING_IO ; 
 scalar_t__ NTFS_MFT_MASK ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_4__*) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_UNEXPECTED_IO_ERROR ; 
 int /*<<< orphan*/  FUNC16 (TYPE_5__*,TYPE_2__*,TYPE_4__*,scalar_t__,int /*<<< orphan*/ *,TYPE_8__*) ; 
 int /*<<< orphan*/  UNIMPLEMENTED ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,scalar_t__,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_2__*,TYPE_4__*,scalar_t__,int /*<<< orphan*/ * const,scalar_t__,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 

NTSTATUS FUNC20(PDEVICE_EXTENSION DeviceExt,
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

    FUNC3("NtfsWriteFile(%p, %p, %p, %lu, %lu, %x, %s, %p)\n",
           DeviceExt,
           FileObject,
           Buffer,
           Length,
           WriteOffset,
           IrpFlags,
           (CaseSensitive ? "TRUE" : "FALSE"),
           LengthWritten);

    *LengthWritten = 0;

    FUNC0(DeviceExt);

    if (Length == 0)
    {
        if (Buffer == NULL)
            return STATUS_SUCCESS;
        else
            return STATUS_INVALID_PARAMETER;
    }

    // get the File control block
    Fcb = (PNTFS_FCB)FileObject->FsContext;
    FUNC0(Fcb);

    FUNC3("Fcb->PathName: %wS\n", Fcb->PathName);
    FUNC3("Fcb->ObjectName: %wS\n", Fcb->ObjectName);

    // we don't yet handle compression
    if (FUNC13(Fcb))
    {
        FUNC3("Compressed file!\n");
        UNIMPLEMENTED;
        return STATUS_NOT_IMPLEMENTED;
    }

    // allocate non-paged memory for the FILE_RECORD_HEADER
    FileRecord = FUNC5(&DeviceExt->FileRecLookasideList);
    if (FileRecord == NULL)
    {
        FUNC4("Not enough memory! Can't write %wS!\n", Fcb->PathName);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    // read the FILE_RECORD_HEADER from the drive (or cache)
    FUNC3("Reading file record...\n");
    Status = FUNC14(DeviceExt, Fcb->MFTIndex, FileRecord);
    if (!FUNC12(Status))
    {
        // We couldn't get the file's record. Free the memory and return the error
        FUNC4("Can't find record for %wS!\n", Fcb->ObjectName);
        FUNC6(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    FUNC3("Found record for %wS\n", Fcb->ObjectName);

    // Find the attribute with the data stream for our file
    FUNC3("Finding Data Attribute...\n");
    Status = FUNC7(DeviceExt, FileRecord, AttributeData, Fcb->Stream, FUNC19(Fcb->Stream), &DataContext,
                           &AttributeOffset);

    // Did we fail to find the attribute?
    if (!FUNC12(Status))
    {
        NTSTATUS BrowseStatus;
        FIND_ATTR_CONTXT Context;
        PNTFS_ATTR_RECORD Attribute;

        FUNC4("No '%S' data stream associated with file!\n", Fcb->Stream);

        // Couldn't find the requested data stream; print a list of streams available
        BrowseStatus = FUNC9(&Context, DeviceExt, FileRecord, FALSE, &Attribute);
        while (FUNC12(BrowseStatus))
        {
            if (Attribute->Type == AttributeData)
            {
                UNICODE_STRING Name;

                Name.Length = Attribute->NameLength * sizeof(WCHAR);
                Name.MaximumLength = Name.Length;
                Name.Buffer = (PWCHAR)((ULONG_PTR)Attribute + Attribute->NameOffset);
                FUNC4("Data stream: '%wZ' available\n", &Name);
            }

            BrowseStatus = FUNC10(&Context, &Attribute);
        }
        FUNC8(&Context);

        FUNC15(DataContext);
        FUNC6(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    // Get the size of the stream on disk
    StreamSize = FUNC2(DataContext->pRecord);

    FUNC3("WriteOffset: %lu\tStreamSize: %I64u\n", WriteOffset, StreamSize);

    // Are we trying to write beyond the end of the stream?
    if (WriteOffset + Length > StreamSize)
    {
        // is increasing the stream size allowed?
        if (!(Fcb->Flags & FCB_IS_VOLUME) &&
            !(IrpFlags & IRP_PAGING_IO))
        {
            LARGE_INTEGER DataSize;
            ULONGLONG AllocationSize;
            PFILENAME_ATTRIBUTE fileNameAttribute;
            ULONGLONG ParentMFTId;
            UNICODE_STRING filename;

            DataSize.QuadPart = WriteOffset + Length;

            // set the attribute data length
            Status = FUNC16(FileObject, Fcb, DataContext, AttributeOffset, FileRecord, &DataSize);
            if (!FUNC12(Status))
            {
                FUNC15(DataContext);
                FUNC6(&DeviceExt->FileRecLookasideList, FileRecord);
                *LengthWritten = 0;
                return Status;
            }

            AllocationSize = FUNC1(DataContext->pRecord);

            // now we need to update this file's size in every directory index entry that references it
            // TODO: put this code in its own function and adapt it to work with every filename / hardlink
            // stored in the file record.
            fileNameAttribute = FUNC11(Fcb->Vcb, FileRecord);
            FUNC0(fileNameAttribute);

            ParentMFTId = fileNameAttribute->DirectoryFileReferenceNumber & NTFS_MFT_MASK;

            filename.Buffer = fileNameAttribute->Name;
            filename.Length = fileNameAttribute->NameLength * sizeof(WCHAR);
            filename.MaximumLength = filename.Length;

            Status = FUNC17(Fcb->Vcb,
                                          ParentMFTId,
                                          &filename,
                                          FALSE,
                                          DataSize.QuadPart,
                                          AllocationSize,
                                          CaseSensitive);

        }
        else
        {
            // TODO - just fail for now
            FUNC15(DataContext);
            FUNC6(&DeviceExt->FileRecLookasideList, FileRecord);
            *LengthWritten = 0;
            return STATUS_ACCESS_DENIED;
        }
    }

    FUNC3("Length: %lu\tWriteOffset: %lu\tStreamSize: %I64u\n", Length, WriteOffset, StreamSize);

    // Write the data to the attribute
    Status = FUNC18(DeviceExt, DataContext, WriteOffset, Buffer, Length, LengthWritten, FileRecord);

    // Did the write fail?
    if (!FUNC12(Status))
    {
        FUNC4("Write failure!\n");
        FUNC15(DataContext);
        FUNC6(&DeviceExt->FileRecLookasideList, FileRecord);

        return Status;
    }

    // This should never happen:
    if (*LengthWritten != Length)
    {
        FUNC4("\a\tNTFS DRIVER ERROR: length written (%lu) differs from requested (%lu), but no error was indicated!\n",
            *LengthWritten, Length);
        Status = STATUS_UNEXPECTED_IO_ERROR;
    }

    FUNC15(DataContext);
    FUNC6(&DeviceExt->FileRecLookasideList, FileRecord);

    return Status;
}