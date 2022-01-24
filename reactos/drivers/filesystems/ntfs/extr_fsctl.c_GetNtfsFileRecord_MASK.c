#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_35__   TYPE_9__ ;
typedef  struct TYPE_34__   TYPE_8__ ;
typedef  struct TYPE_33__   TYPE_7__ ;
typedef  struct TYPE_32__   TYPE_6__ ;
typedef  struct TYPE_31__   TYPE_5__ ;
typedef  struct TYPE_30__   TYPE_4__ ;
typedef  struct TYPE_29__   TYPE_3__ ;
typedef  struct TYPE_28__   TYPE_2__ ;
typedef  struct TYPE_27__   TYPE_1__ ;
typedef  struct TYPE_26__   TYPE_13__ ;
typedef  struct TYPE_25__   TYPE_12__ ;
typedef  struct TYPE_24__   TYPE_11__ ;
typedef  struct TYPE_23__   TYPE_10__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONGLONG ;
struct TYPE_29__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_35__ {TYPE_3__ FileReferenceNumber; } ;
struct TYPE_31__ {int /*<<< orphan*/  QuadPart; } ;
struct TYPE_34__ {int /*<<< orphan*/  FileRecordBuffer; scalar_t__ FileRecordLength; TYPE_5__ FileReferenceNumber; } ;
struct TYPE_33__ {scalar_t__ BytesPerFileRecord; } ;
struct TYPE_32__ {scalar_t__ Information; } ;
struct TYPE_30__ {int /*<<< orphan*/ * SystemBuffer; } ;
struct TYPE_27__ {int InputBufferLength; scalar_t__ OutputBufferLength; } ;
struct TYPE_28__ {TYPE_1__ FileSystemControl; } ;
struct TYPE_26__ {TYPE_7__ NtfsInfo; int /*<<< orphan*/  FileRecLookasideList; } ;
struct TYPE_25__ {int Flags; } ;
struct TYPE_24__ {TYPE_2__ Parameters; } ;
struct TYPE_23__ {TYPE_6__ IoStatus; TYPE_4__ AssociatedIrp; } ;
typedef  TYPE_8__* PNTFS_FILE_RECORD_OUTPUT_BUFFER ;
typedef  TYPE_9__* PNTFS_FILE_RECORD_INPUT_BUFFER ;
typedef  TYPE_10__* PIRP ;
typedef  TYPE_11__* PIO_STACK_LOCATION ;
typedef  TYPE_12__* PFILE_RECORD_HEADER ;
typedef  TYPE_13__* PDEVICE_EXTENSION ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  NTFS_FILE_RECORD_INPUT_BUFFER ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 TYPE_12__* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_12__*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FRH_IN_USE ; 
 int /*<<< orphan*/  FileRecordBuffer ; 
 TYPE_11__* FUNC4 (TYPE_10__*) ; 
 int /*<<< orphan*/  NTFS_FILE_RECORD_OUTPUT_BUFFER ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_13__*,int /*<<< orphan*/ ,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_12__*,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_BUFFER_TOO_SMALL ; 
 int /*<<< orphan*/  STATUS_INSUFFICIENT_RESOURCES ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ TRUE ; 

__attribute__((used)) static
NTSTATUS
FUNC8(PDEVICE_EXTENSION DeviceExt,
                  PIRP Irp)
{
    NTSTATUS Status;
    PIO_STACK_LOCATION Stack;
    PNTFS_FILE_RECORD_INPUT_BUFFER InputBuffer;
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_FILE_RECORD_OUTPUT_BUFFER OutputBuffer;
    ULONGLONG MFTRecord;

    Stack = FUNC4(Irp);

    if (Stack->Parameters.FileSystemControl.InputBufferLength < sizeof(NTFS_FILE_RECORD_INPUT_BUFFER) ||
        Irp->AssociatedIrp.SystemBuffer == NULL)
    {
        FUNC0("Invalid input! %d %p\n", Stack->Parameters.FileSystemControl.InputBufferLength, Irp->AssociatedIrp.SystemBuffer);
        return STATUS_INVALID_PARAMETER;
    }

    if (Stack->Parameters.FileSystemControl.OutputBufferLength < (FUNC3(NTFS_FILE_RECORD_OUTPUT_BUFFER, FileRecordBuffer) + DeviceExt->NtfsInfo.BytesPerFileRecord) ||
        Irp->AssociatedIrp.SystemBuffer == NULL)
    {
        FUNC0("Invalid output! %d %p\n", Stack->Parameters.FileSystemControl.OutputBufferLength, Irp->AssociatedIrp.SystemBuffer);
        return STATUS_BUFFER_TOO_SMALL;
    }

    FileRecord = FUNC1(&DeviceExt->FileRecLookasideList);
    if (FileRecord == NULL)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    InputBuffer = (PNTFS_FILE_RECORD_INPUT_BUFFER)Irp->AssociatedIrp.SystemBuffer;

    MFTRecord = InputBuffer->FileReferenceNumber.QuadPart;
    FUNC0("Requesting: %I64x\n", MFTRecord);

    do
    {
        Status = FUNC6(DeviceExt, MFTRecord, FileRecord);
        if (FUNC5(Status))
        {
            if (FileRecord->Flags & FRH_IN_USE)
            {
                break;
            }
        }

        --MFTRecord;
    } while (TRUE);

    FUNC0("Returning: %I64x\n", MFTRecord);
    OutputBuffer = (PNTFS_FILE_RECORD_OUTPUT_BUFFER)Irp->AssociatedIrp.SystemBuffer;
    OutputBuffer->FileReferenceNumber.QuadPart = MFTRecord;
    OutputBuffer->FileRecordLength = DeviceExt->NtfsInfo.BytesPerFileRecord;
    FUNC7(OutputBuffer->FileRecordBuffer, FileRecord, DeviceExt->NtfsInfo.BytesPerFileRecord);

    FUNC2(&DeviceExt->FileRecLookasideList, FileRecord);

    Irp->IoStatus.Information = FUNC3(NTFS_FILE_RECORD_OUTPUT_BUFFER, FileRecordBuffer) + DeviceExt->NtfsInfo.BytesPerFileRecord;

    return STATUS_SUCCESS;
}