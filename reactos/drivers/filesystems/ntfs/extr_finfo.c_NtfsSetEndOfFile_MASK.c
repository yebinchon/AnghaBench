#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_25__ {int Length; int MaximumLength; int /*<<< orphan*/  Buffer; } ;
typedef  TYPE_1__ UNICODE_STRING ;
typedef  int ULONGLONG ;
typedef  int ULONG ;
struct TYPE_32__ {scalar_t__ QuadPart; } ;
struct TYPE_31__ {int /*<<< orphan*/  FileRecLookasideList; } ;
struct TYPE_30__ {int DirectoryFileReferenceNumber; int NameLength; int /*<<< orphan*/  Name; } ;
struct TYPE_29__ {int /*<<< orphan*/  SectionObjectPointer; } ;
struct TYPE_28__ {scalar_t__ QuadPart; } ;
struct TYPE_27__ {int /*<<< orphan*/  pRecord; } ;
struct TYPE_26__ {int Flags; int /*<<< orphan*/  Vcb; int /*<<< orphan*/  Stream; int /*<<< orphan*/  ObjectName; int /*<<< orphan*/  MFTIndex; } ;
typedef  TYPE_2__* PNTFS_FCB ;
typedef  TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef  TYPE_4__* PLARGE_INTEGER ;
typedef  int /*<<< orphan*/ * PFILE_RECORD_HEADER ;
typedef  TYPE_5__* PFILE_OBJECT ;
typedef  TYPE_6__* PFILENAME_ATTRIBUTE ;
typedef  TYPE_7__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  TYPE_8__ LARGE_INTEGER ;
typedef  int /*<<< orphan*/  BOOLEAN ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AttributeData ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int FCB_IS_VOLUME ; 
 int /*<<< orphan*/  FUNC6 (TYPE_7__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__**,int*) ; 
 TYPE_6__* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int IRP_PAGING_IO ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_4__*) ; 
 int NTFS_MFT_MASK ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (TYPE_7__*,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_3__*) ; 
 int /*<<< orphan*/  STATUS_ACCESS_DENIED ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  STATUS_USER_MAPPED_FILE ; 
 int /*<<< orphan*/  FUNC13 (TYPE_5__*,TYPE_2__*,TYPE_3__*,int,int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int,TYPE_1__*,int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC16(PNTFS_FCB Fcb,
                 PFILE_OBJECT FileObject,
                 PDEVICE_EXTENSION DeviceExt,
                 ULONG IrpFlags,
                 BOOLEAN CaseSensitive,
                 PLARGE_INTEGER NewFileSize)
{
    LARGE_INTEGER CurrentFileSize;
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_ATTR_CONTEXT DataContext;
    ULONG AttributeOffset;
    NTSTATUS Status = STATUS_SUCCESS;
    ULONGLONG AllocationSize;
    PFILENAME_ATTRIBUTE FileNameAttribute;
    ULONGLONG ParentMFTId;
    UNICODE_STRING FileName;


    // Allocate non-paged memory for the file record
    FileRecord = FUNC4(&DeviceExt->FileRecLookasideList);
    if (FileRecord == NULL)
    {
        FUNC3("Couldn't allocate memory for file record!");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    // read the file record
    FUNC2("Reading file record...\n");
    Status = FUNC11(DeviceExt, Fcb->MFTIndex, FileRecord);
    if (!FUNC9(Status))
    {
        // We couldn't get the file's record. Free the memory and return the error
        FUNC3("Can't find record for %wS!\n", Fcb->ObjectName);
        FUNC5(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    FUNC2("Found record for %wS\n", Fcb->ObjectName);

    CurrentFileSize.QuadPart = FUNC10(DeviceExt, FileRecord, L"", 0, NULL);

    // Are we trying to decrease the file size?
    if (NewFileSize->QuadPart < CurrentFileSize.QuadPart)
    {
        // Is the file mapped?
        if (!FUNC8(FileObject->SectionObjectPointer,
                                  NewFileSize))
        {
            FUNC3("Couldn't decrease file size!\n");
            FUNC5(&DeviceExt->FileRecLookasideList, FileRecord);
            return STATUS_USER_MAPPED_FILE;
        }
    }

    // Find the attribute with the data stream for our file
    FUNC2("Finding Data Attribute...\n");
    Status = FUNC6(DeviceExt,
                           FileRecord,
                           AttributeData,
                           Fcb->Stream,
                           FUNC15(Fcb->Stream),
                           &DataContext,
                           &AttributeOffset);

    // Did we fail to find the attribute?
    if (!FUNC9(Status))
    {
        FUNC3("No '%S' data stream associated with file!\n", Fcb->Stream);
        FUNC5(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    // Get the size of the data attribute
    CurrentFileSize.QuadPart = FUNC1(DataContext->pRecord);

    // Are we enlarging the attribute?
    if (NewFileSize->QuadPart > CurrentFileSize.QuadPart)
    {
        // is increasing the stream size not allowed?
        if ((Fcb->Flags & FCB_IS_VOLUME) ||
            (IrpFlags & IRP_PAGING_IO))
        {
            // TODO - just fail for now
            FUNC12(DataContext);
            FUNC5(&DeviceExt->FileRecLookasideList, FileRecord);
            return STATUS_ACCESS_DENIED;
        }
    }

    // set the attribute data length
    Status = FUNC13(FileObject, Fcb, DataContext, AttributeOffset, FileRecord, NewFileSize);
    if (!FUNC9(Status))
    {
        FUNC12(DataContext);
        FUNC5(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    // now we need to update this file's size in every directory index entry that references it
    // TODO: expand to work with every filename / hardlink stored in the file record.
    FileNameAttribute = FUNC7(Fcb->Vcb, FileRecord);
    if (FileNameAttribute == NULL)
    {
        FUNC3("Unable to find FileName attribute associated with file!\n");
        FUNC12(DataContext);
        FUNC5(&DeviceExt->FileRecLookasideList, FileRecord);
        return STATUS_INVALID_PARAMETER;
    }

    ParentMFTId = FileNameAttribute->DirectoryFileReferenceNumber & NTFS_MFT_MASK;

    FileName.Buffer = FileNameAttribute->Name;
    FileName.Length = FileNameAttribute->NameLength * sizeof(WCHAR);
    FileName.MaximumLength = FileName.Length;

    AllocationSize = FUNC0(DataContext->pRecord);

    Status = FUNC14(Fcb->Vcb,
                                  ParentMFTId,
                                  &FileName,
                                  FALSE,
                                  NewFileSize->QuadPart,
                                  AllocationSize,
                                  CaseSensitive);

    FUNC12(DataContext);
    FUNC5(&DeviceExt->FileRecLookasideList, FileRecord);

    return Status;
}