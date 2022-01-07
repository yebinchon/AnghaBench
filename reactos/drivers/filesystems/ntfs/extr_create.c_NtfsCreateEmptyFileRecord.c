
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef int ULONG ;
struct TYPE_11__ {int BytesPerFileRecord; int BytesPerSector; } ;
struct TYPE_15__ {TYPE_1__ NtfsInfo; int FileRecLookasideList; } ;
struct TYPE_12__ {int UsaCount; scalar_t__ UsaOffset; int Type; } ;
struct TYPE_14__ {int BytesAllocated; int SequenceNumber; scalar_t__ AttributeOffset; scalar_t__ BytesInUse; int Flags; TYPE_2__ Ntfs; } ;
struct TYPE_13__ {int Length; int Type; } ;
typedef TYPE_3__* PNTFS_ATTR_RECORD ;
typedef TYPE_4__* PFILE_RECORD_HEADER ;
typedef TYPE_5__* PDEVICE_EXTENSION ;


 scalar_t__ ALIGN_UP_BY (scalar_t__,int ) ;
 int ATTR_RECORD_ALIGNMENT ;
 int AttributeEnd ;
 int DPRINT (char*,TYPE_5__*) ;
 int DPRINT1 (char*) ;
 TYPE_4__* ExAllocateFromNPagedLookasideList (int *) ;
 scalar_t__ FIELD_OFFSET (int ,int ) ;
 int FILE_RECORD_END ;
 int FILE_RECORD_HEADER ;
 int FRH_IN_USE ;
 int MFTRecordNumber ;
 int NRH_FILE_TYPE ;
 int RtlZeroMemory (TYPE_4__*,int) ;

PFILE_RECORD_HEADER
NtfsCreateEmptyFileRecord(PDEVICE_EXTENSION DeviceExt)
{
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_ATTR_RECORD NextAttribute;

    DPRINT("NtfsCreateEmptyFileRecord(%p)\n", DeviceExt);


    FileRecord = ExAllocateFromNPagedLookasideList(&DeviceExt->FileRecLookasideList);
    if (!FileRecord)
    {
        DPRINT1("ERROR: Unable to allocate memory for file record!\n");
        return ((void*)0);
    }

    RtlZeroMemory(FileRecord, DeviceExt->NtfsInfo.BytesPerFileRecord);

    FileRecord->Ntfs.Type = NRH_FILE_TYPE;


    FileRecord->Ntfs.UsaOffset = FIELD_OFFSET(FILE_RECORD_HEADER, MFTRecordNumber) + sizeof(ULONG);


    FileRecord->BytesAllocated = DeviceExt->NtfsInfo.BytesPerFileRecord;
    FileRecord->Ntfs.UsaCount = (FileRecord->BytesAllocated / DeviceExt->NtfsInfo.BytesPerSector) + 1;


    FileRecord->SequenceNumber = 1;
    FileRecord->AttributeOffset = FileRecord->Ntfs.UsaOffset + (2 * FileRecord->Ntfs.UsaCount);
    FileRecord->AttributeOffset = ALIGN_UP_BY(FileRecord->AttributeOffset, ATTR_RECORD_ALIGNMENT);
    FileRecord->Flags = FRH_IN_USE;
    FileRecord->BytesInUse = FileRecord->AttributeOffset + sizeof(ULONG) * 2;


    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + FileRecord->AttributeOffset);


    NextAttribute->Type = AttributeEnd;
    NextAttribute->Length = FILE_RECORD_END;

    return FileRecord;
}
