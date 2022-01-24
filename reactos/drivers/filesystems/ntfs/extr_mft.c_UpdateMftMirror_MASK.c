#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONGLONG ;
typedef  scalar_t__ ULONG ;
struct TYPE_15__ {int /*<<< orphan*/  pRecord; } ;
struct TYPE_13__ {int BytesPerFileRecord; } ;
struct TYPE_14__ {int /*<<< orphan*/  FileRecLookasideList; TYPE_1__ NtfsInfo; int /*<<< orphan*/  MasterFileTable; } ;
typedef  int /*<<< orphan*/  PUCHAR ;
typedef  TYPE_2__* PNTFS_VCB ;
typedef  TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef  int /*<<< orphan*/  PFILE_RECORD_HEADER ;
typedef  scalar_t__ PCHAR ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  AttributeData ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  NTFS_FILE_MFTMIRR ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NonPagedPool ; 
 scalar_t__ FUNC9 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*) ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_UNSUCCESSFUL ; 
 int /*<<< orphan*/  TAG_NTFS ; 
 int ULONG_MAX ; 
 int /*<<< orphan*/  FUNC12 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,scalar_t__*,int /*<<< orphan*/ ) ; 

NTSTATUS
FUNC13(PNTFS_VCB Vcb)
{
    PFILE_RECORD_HEADER MirrorFileRecord;
    PNTFS_ATTR_CONTEXT MirrDataContext;
    PNTFS_ATTR_CONTEXT MftDataContext;
    PCHAR DataBuffer;
    ULONGLONG DataLength;
    NTSTATUS Status;
    ULONG BytesRead;
    ULONG LengthWritten;

    // Allocate memory for the Mft mirror file record
    MirrorFileRecord = FUNC3(&Vcb->FileRecLookasideList);
    if (!MirrorFileRecord)
    {
        FUNC2("Error: Failed to allocate memory for $MFTMirr!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    // Read the Mft Mirror file record
    Status = FUNC10(Vcb, NTFS_FILE_MFTMIRR, MirrorFileRecord);
    if (!FUNC8(Status))
    {
        FUNC2("ERROR: Failed to read $MFTMirr!\n");
        FUNC6(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return Status;
    }

    // Find the $DATA attribute of $MFTMirr
    Status = FUNC7(Vcb, MirrorFileRecord, AttributeData, L"", 0, &MirrDataContext, NULL);
    if (!FUNC8(Status))
    {
        FUNC2("ERROR: Couldn't find $DATA attribute!\n");
        FUNC6(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return Status;
    }

    // Find the $DATA attribute of $MFT
    Status = FUNC7(Vcb, Vcb->MasterFileTable, AttributeData, L"", 0, &MftDataContext, NULL);
    if (!FUNC8(Status))
    {
        FUNC2("ERROR: Couldn't find $DATA attribute!\n");
        FUNC11(MirrDataContext);
        FUNC6(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return Status;
    }

    // Get the size of the mirror's $DATA attribute
    DataLength = FUNC1(MirrDataContext->pRecord);

    FUNC0(DataLength % Vcb->NtfsInfo.BytesPerFileRecord == 0);

    // Create buffer for the mirror's $DATA attribute
    DataBuffer = FUNC4(NonPagedPool, DataLength, TAG_NTFS);
    if (!DataBuffer)
    {
        FUNC2("Error: Couldn't allocate memory for $DATA buffer!\n");
        FUNC11(MftDataContext);
        FUNC11(MirrDataContext);
        FUNC6(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    FUNC0(DataLength < ULONG_MAX);

    // Back up the first several entries of the Mft's $DATA Attribute
    BytesRead = FUNC9(Vcb, MftDataContext, 0, DataBuffer, (ULONG)DataLength);
    if (BytesRead != (ULONG)DataLength)
    {
        FUNC2("Error: Failed to read $DATA for $MFTMirr!\n");
        FUNC11(MftDataContext);
        FUNC11(MirrDataContext);
        FUNC5(DataBuffer, TAG_NTFS);
        FUNC6(&Vcb->FileRecLookasideList, MirrorFileRecord);
        return STATUS_UNSUCCESSFUL;
    }

    // Write the mirror's $DATA attribute
    Status = FUNC12(Vcb,
                             MirrDataContext,
                             0,
                             (PUCHAR)DataBuffer,
                             DataLength,
                             &LengthWritten,
                             MirrorFileRecord);
    if (!FUNC8(Status))
    {
        FUNC2("ERROR: Failed to write $DATA attribute of $MFTMirr!\n");
    }

    // Cleanup
    FUNC11(MftDataContext);
    FUNC11(MirrDataContext);
    FUNC5(DataBuffer, TAG_NTFS);
    FUNC6(&Vcb->FileRecLookasideList, MirrorFileRecord);

    return Status;
}