
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_35__ TYPE_9__ ;
typedef struct TYPE_34__ TYPE_8__ ;
typedef struct TYPE_33__ TYPE_7__ ;
typedef struct TYPE_32__ TYPE_6__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;
typedef struct TYPE_26__ TYPE_13__ ;
typedef struct TYPE_25__ TYPE_12__ ;
typedef struct TYPE_24__ TYPE_11__ ;
typedef struct TYPE_23__ TYPE_10__ ;


typedef int ULONGLONG ;
struct TYPE_29__ {int QuadPart; } ;
struct TYPE_35__ {TYPE_3__ FileReferenceNumber; } ;
struct TYPE_31__ {int QuadPart; } ;
struct TYPE_34__ {int FileRecordBuffer; scalar_t__ FileRecordLength; TYPE_5__ FileReferenceNumber; } ;
struct TYPE_33__ {scalar_t__ BytesPerFileRecord; } ;
struct TYPE_32__ {scalar_t__ Information; } ;
struct TYPE_30__ {int * SystemBuffer; } ;
struct TYPE_27__ {int InputBufferLength; scalar_t__ OutputBufferLength; } ;
struct TYPE_28__ {TYPE_1__ FileSystemControl; } ;
struct TYPE_26__ {TYPE_7__ NtfsInfo; int FileRecLookasideList; } ;
struct TYPE_25__ {int Flags; } ;
struct TYPE_24__ {TYPE_2__ Parameters; } ;
struct TYPE_23__ {TYPE_6__ IoStatus; TYPE_4__ AssociatedIrp; } ;
typedef TYPE_8__* PNTFS_FILE_RECORD_OUTPUT_BUFFER ;
typedef TYPE_9__* PNTFS_FILE_RECORD_INPUT_BUFFER ;
typedef TYPE_10__* PIRP ;
typedef TYPE_11__* PIO_STACK_LOCATION ;
typedef TYPE_12__* PFILE_RECORD_HEADER ;
typedef TYPE_13__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int NTFS_FILE_RECORD_INPUT_BUFFER ;


 int DPRINT1 (char*,int,...) ;
 TYPE_12__* ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_12__*) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int FRH_IN_USE ;
 int FileRecordBuffer ;
 TYPE_11__* IoGetCurrentIrpStackLocation (TYPE_10__*) ;
 int NTFS_FILE_RECORD_OUTPUT_BUFFER ;
 scalar_t__ NT_SUCCESS (int ) ;
 int ReadFileRecord (TYPE_13__*,int ,TYPE_12__*) ;
 int RtlCopyMemory (int ,TYPE_12__*,scalar_t__) ;
 int STATUS_BUFFER_TOO_SMALL ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 scalar_t__ TRUE ;

__attribute__((used)) static
NTSTATUS
GetNtfsFileRecord(PDEVICE_EXTENSION DeviceExt,
                  PIRP Irp)
{
    NTSTATUS Status;
    PIO_STACK_LOCATION Stack;
    PNTFS_FILE_RECORD_INPUT_BUFFER InputBuffer;
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_FILE_RECORD_OUTPUT_BUFFER OutputBuffer;
    ULONGLONG MFTRecord;

    Stack = IoGetCurrentIrpStackLocation(Irp);

    if (Stack->Parameters.FileSystemControl.InputBufferLength < sizeof(NTFS_FILE_RECORD_INPUT_BUFFER) ||
        Irp->AssociatedIrp.SystemBuffer == ((void*)0))
    {
        DPRINT1("Invalid input! %d %p\n", Stack->Parameters.FileSystemControl.InputBufferLength, Irp->AssociatedIrp.SystemBuffer);
        return STATUS_INVALID_PARAMETER;
    }

    if (Stack->Parameters.FileSystemControl.OutputBufferLength < (FIELD_OFFSET(NTFS_FILE_RECORD_OUTPUT_BUFFER, FileRecordBuffer) + DeviceExt->NtfsInfo.BytesPerFileRecord) ||
        Irp->AssociatedIrp.SystemBuffer == ((void*)0))
    {
        DPRINT1("Invalid output! %d %p\n", Stack->Parameters.FileSystemControl.OutputBufferLength, Irp->AssociatedIrp.SystemBuffer);
        return STATUS_BUFFER_TOO_SMALL;
    }

    FileRecord = ExAllocateFromNPagedLookasideList(&DeviceExt->FileRecLookasideList);
    if (FileRecord == ((void*)0))
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    InputBuffer = (PNTFS_FILE_RECORD_INPUT_BUFFER)Irp->AssociatedIrp.SystemBuffer;

    MFTRecord = InputBuffer->FileReferenceNumber.QuadPart;
    DPRINT1("Requesting: %I64x\n", MFTRecord);

    do
    {
        Status = ReadFileRecord(DeviceExt, MFTRecord, FileRecord);
        if (NT_SUCCESS(Status))
        {
            if (FileRecord->Flags & FRH_IN_USE)
            {
                break;
            }
        }

        --MFTRecord;
    } while (TRUE);

    DPRINT1("Returning: %I64x\n", MFTRecord);
    OutputBuffer = (PNTFS_FILE_RECORD_OUTPUT_BUFFER)Irp->AssociatedIrp.SystemBuffer;
    OutputBuffer->FileReferenceNumber.QuadPart = MFTRecord;
    OutputBuffer->FileRecordLength = DeviceExt->NtfsInfo.BytesPerFileRecord;
    RtlCopyMemory(OutputBuffer->FileRecordBuffer, FileRecord, DeviceExt->NtfsInfo.BytesPerFileRecord);

    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);

    Irp->IoStatus.Information = FIELD_OFFSET(NTFS_FILE_RECORD_OUTPUT_BUFFER, FileRecordBuffer) + DeviceExt->NtfsInfo.BytesPerFileRecord;

    return STATUS_SUCCESS;
}
