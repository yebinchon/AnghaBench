#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
struct TYPE_22__ {int Length; int MaximumLength; scalar_t__ Buffer; } ;
typedef  TYPE_2__ UNICODE_STRING ;
typedef  scalar_t__ ULONG_PTR ;
typedef  scalar_t__ ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_21__ {scalar_t__ BytesPerSector; } ;
struct TYPE_27__ {int /*<<< orphan*/  FileRecLookasideList; TYPE_1__ NtfsInfo; } ;
struct TYPE_26__ {scalar_t__ FsContext; } ;
struct TYPE_25__ {int /*<<< orphan*/  pRecord; } ;
struct TYPE_24__ {scalar_t__ Type; int NameLength; scalar_t__ NameOffset; } ;
struct TYPE_23__ {int /*<<< orphan*/  Stream; int /*<<< orphan*/  MFTIndex; } ;
typedef  scalar_t__ PWCHAR ;
typedef  scalar_t__* PULONG ;
typedef  scalar_t__ PUCHAR ;
typedef  TYPE_3__* PNTFS_FCB ;
typedef  TYPE_4__* PNTFS_ATTR_RECORD ;
typedef  TYPE_5__* PNTFS_ATTR_CONTEXT ;
typedef  int /*<<< orphan*/ * PFILE_RECORD_HEADER ;
typedef  TYPE_6__* PFILE_OBJECT ;
typedef  TYPE_7__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/ * PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  FIND_ATTR_CONTXT ;
typedef  scalar_t__ BOOLEAN ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AttributeData ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,TYPE_7__*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FALSE ; 
 int /*<<< orphan*/  FUNC8 (TYPE_7__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_5__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,TYPE_7__*,int /*<<< orphan*/ *,scalar_t__,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,TYPE_4__**) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 scalar_t__ FUNC13 (TYPE_3__*) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC16 (TYPE_7__*,TYPE_5__*,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_7__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_5__*) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_END_OF_FILE ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_NOT_IMPLEMENTED ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  UNIMPLEMENTED ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static
NTSTATUS
FUNC22(PDEVICE_EXTENSION DeviceExt,
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

    FUNC2("NtfsReadFile(%p, %p, %p, %lu, %lu, %lx, %p)\n", DeviceExt, FileObject, Buffer, Length, ReadOffset, IrpFlags, LengthRead);

    *LengthRead = 0;

    if (Length == 0)
    {
        FUNC3("Null read!\n");
        return STATUS_SUCCESS;
    }

    Fcb = (PNTFS_FCB)FileObject->FsContext;

    if (FUNC13(Fcb))
    {
        FUNC3("Compressed file!\n");
        UNIMPLEMENTED;
        return STATUS_NOT_IMPLEMENTED;
    }

    FileRecord = FUNC4(&DeviceExt->FileRecLookasideList);
    if (FileRecord == NULL)
    {
        FUNC3("Not enough memory!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = FUNC17(DeviceExt, Fcb->MFTIndex, FileRecord);
    if (!FUNC12(Status))
    {
        FUNC3("Can't find record!\n");
        FUNC7(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }


    Status = FUNC8(DeviceExt, FileRecord, AttributeData, Fcb->Stream, FUNC21(Fcb->Stream), &DataContext, NULL);
    if (!FUNC12(Status))
    {
        NTSTATUS BrowseStatus;
        FIND_ATTR_CONTXT Context;
        PNTFS_ATTR_RECORD Attribute;

        FUNC3("No '%S' data stream associated with file!\n", Fcb->Stream);

        BrowseStatus = FUNC10(&Context, DeviceExt, FileRecord, FALSE, &Attribute);
        while (FUNC12(BrowseStatus))
        {
            if (Attribute->Type == AttributeData)
            {
                UNICODE_STRING Name;

                Name.Length = Attribute->NameLength * sizeof(WCHAR);
                Name.MaximumLength = Name.Length;
                Name.Buffer = (PWCHAR)((ULONG_PTR)Attribute + Attribute->NameOffset);
                FUNC3("Data stream: '%wZ' available\n", &Name);
            }

            BrowseStatus = FUNC11(&Context, &Attribute);
        }
        FUNC9(&Context);

        FUNC18(DataContext);
        FUNC7(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    StreamSize = FUNC1(DataContext->pRecord);
    if (ReadOffset >= StreamSize)
    {
        FUNC3("Reading beyond stream end!\n");
        FUNC18(DataContext);
        FUNC7(&DeviceExt->FileRecLookasideList, FileRecord);
        return STATUS_END_OF_FILE;
    }

    ToRead = Length;
    if (ReadOffset + Length > StreamSize)
        ToRead = StreamSize - ReadOffset;

    RealReadOffset = ReadOffset;
    RealLength = ToRead;

    if ((ReadOffset % DeviceExt->NtfsInfo.BytesPerSector) != 0 || (ToRead % DeviceExt->NtfsInfo.BytesPerSector) != 0)
    {
        RealReadOffset = FUNC14(ReadOffset, DeviceExt->NtfsInfo.BytesPerSector);
        RealLength = FUNC15(ToRead, DeviceExt->NtfsInfo.BytesPerSector);
        /* do we need to extend RealLength by one sector? */
        if (RealLength + RealReadOffset < ReadOffset + Length)
        {
            if (RealReadOffset + RealLength + DeviceExt->NtfsInfo.BytesPerSector <= FUNC0(DataContext->pRecord))
                RealLength += DeviceExt->NtfsInfo.BytesPerSector;
        }


        ReadBuffer = FUNC5(NonPagedPool, RealLength, TAG_NTFS);
        if (ReadBuffer == NULL)
        {
            FUNC3("Not enough memory!\n");
            FUNC18(DataContext);
            FUNC7(&DeviceExt->FileRecLookasideList, FileRecord);
            return STATUS_INSUFFICIENT_RESOURCES;
        }
        AllocatedBuffer = TRUE;
    }

    FUNC2("Effective read: %lu at %lu for stream '%S'\n", RealLength, RealReadOffset, Fcb->Stream);
    RealLengthRead = FUNC16(DeviceExt, DataContext, RealReadOffset, (PCHAR)ReadBuffer, RealLength);
    if (RealLengthRead == 0)
    {
        FUNC3("Read failure!\n");
        FUNC18(DataContext);
        FUNC7(&DeviceExt->FileRecLookasideList, FileRecord);
        if (AllocatedBuffer)
        {
            FUNC6(ReadBuffer, TAG_NTFS);
        }
        return Status;
    }

    FUNC18(DataContext);
    FUNC7(&DeviceExt->FileRecLookasideList, FileRecord);

    *LengthRead = ToRead;

    FUNC2("%lu got read\n", *LengthRead);

    if (AllocatedBuffer)
    {
        FUNC19(Buffer, ReadBuffer + (ReadOffset - RealReadOffset), ToRead);
    }

    if (ToRead != Length)
    {
        FUNC20(Buffer + ToRead, Length - ToRead);
    }

    if (AllocatedBuffer)
    {
        FUNC6(ReadBuffer, TAG_NTFS);
    }

    return STATUS_SUCCESS;
}