
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_18__ {int CompressedSize; } ;
struct TYPE_17__ {scalar_t__ BytesInUse; int NextAttributeNumber; } ;
struct TYPE_14__ {scalar_t__ HighestVCN; scalar_t__ MappingPairsOffset; } ;
struct TYPE_16__ {scalar_t__ Type; scalar_t__ Length; int NameLength; TYPE_2__ NonResident; scalar_t__ Instance; scalar_t__ NameOffset; int IsNonResident; } ;
struct TYPE_13__ {scalar_t__ BytesPerFileRecord; } ;
struct TYPE_15__ {TYPE_1__ NtfsInfo; } ;
typedef TYPE_3__* PNTFS_VCB ;
typedef TYPE_4__* PNTFS_ATTR_RECORD ;
typedef TYPE_5__* PFILE_RECORD_HEADER ;
typedef int PCWSTR ;
typedef int PCHAR ;
typedef int NTSTATUS ;
typedef scalar_t__ LONGLONG ;


 scalar_t__ ALIGN_UP_BY (scalar_t__,int ) ;
 int ATTR_RECORD_ALIGNMENT ;
 scalar_t__ AttributeEnd ;
 scalar_t__ AttributeIndexAllocation ;
 int DATA_RUN_ALIGNMENT ;
 int DPRINT1 (char*) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int NTFS_ATTR_RECORD ;
 TYPE_9__ NonResident ;
 int RtlCopyMemory (int ,int ,int) ;
 int RtlZeroMemory (TYPE_4__*,scalar_t__) ;
 int STATUS_NOT_IMPLEMENTED ;
 int STATUS_SUCCESS ;
 int SetFileRecordEnd (TYPE_5__*,TYPE_4__*,scalar_t__) ;
 int TRUE ;

NTSTATUS
AddIndexAllocation(PNTFS_VCB Vcb,
                   PFILE_RECORD_HEADER FileRecord,
                   PNTFS_ATTR_RECORD AttributeAddress,
                   PCWSTR Name,
                   USHORT NameLength)
{
    ULONG RecordLength;
    ULONG FileRecordEnd;
    ULONG NameOffset;
    ULONG DataRunOffset;
    ULONG BytesAvailable;

    if (AttributeAddress->Type != AttributeEnd)
    {
        DPRINT1("FIXME: Can only add $INDEX_ALLOCATION attribute to the end of a file record.\n");
        return STATUS_NOT_IMPLEMENTED;
    }


    NameOffset = FIELD_OFFSET(NTFS_ATTR_RECORD, NonResident.CompressedSize);


    DataRunOffset = (sizeof(WCHAR) * NameLength) + NameOffset;

    DataRunOffset = ALIGN_UP_BY(DataRunOffset, DATA_RUN_ALIGNMENT);


    RecordLength = DataRunOffset + 1;


    RecordLength = ALIGN_UP_BY(RecordLength, ATTR_RECORD_ALIGNMENT);


    FileRecordEnd = AttributeAddress->Length;


    BytesAvailable = Vcb->NtfsInfo.BytesPerFileRecord - FileRecord->BytesInUse;
    if (BytesAvailable < RecordLength)
    {
        DPRINT1("FIXME: Not enough room in file record for index allocation attribute!\n");
        return STATUS_NOT_IMPLEMENTED;
    }


    RtlZeroMemory(AttributeAddress, RecordLength);

    AttributeAddress->Type = AttributeIndexAllocation;
    AttributeAddress->Length = RecordLength;
    AttributeAddress->IsNonResident = TRUE;
    AttributeAddress->NameLength = NameLength;
    AttributeAddress->NameOffset = NameOffset;
    AttributeAddress->Instance = FileRecord->NextAttributeNumber++;

    AttributeAddress->NonResident.MappingPairsOffset = DataRunOffset;
    AttributeAddress->NonResident.HighestVCN = (LONGLONG)-1;


    RtlCopyMemory((PCHAR)((ULONG_PTR)AttributeAddress + NameOffset), Name, NameLength * sizeof(WCHAR));


    AttributeAddress = (PNTFS_ATTR_RECORD)((ULONG_PTR)AttributeAddress + AttributeAddress->Length);
    SetFileRecordEnd(FileRecord, AttributeAddress, FileRecordEnd);

    return STATUS_SUCCESS;
}
