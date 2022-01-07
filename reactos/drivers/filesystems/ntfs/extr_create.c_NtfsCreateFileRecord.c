
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONGLONG ;
struct TYPE_25__ {int FileRecLookasideList; } ;
struct TYPE_24__ {scalar_t__ SequenceNumber; scalar_t__ AttributeOffset; } ;
struct TYPE_22__ {scalar_t__ ValueOffset; } ;
struct TYPE_23__ {scalar_t__ Length; TYPE_1__ Resident; } ;
typedef TYPE_2__* PNTFS_ATTR_RECORD ;
typedef TYPE_3__* PFILE_RECORD_HEADER ;
typedef int PFILE_OBJECT ;
typedef scalar_t__ PFILENAME_ATTRIBUTE ;
typedef TYPE_4__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int AddData (TYPE_3__*,TYPE_2__*) ;
 int AddFileName (TYPE_3__*,TYPE_2__*,TYPE_4__*,int ,int ,scalar_t__*) ;
 int AddNewMftEntry (TYPE_3__*,TYPE_4__*,scalar_t__*,int ) ;
 int AddStandardInformation (TYPE_3__*,TYPE_2__*) ;
 int DPRINT (char*,TYPE_4__*,int ,char*,char*) ;
 int DPRINT1 (char*,...) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_3__*) ;
 scalar_t__ NTFS_FILE_ROOT ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtfsAddFilenameToDirectory (TYPE_4__*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 TYPE_3__* NtfsCreateEmptyFileRecord (TYPE_4__*) ;
 int NtfsDumpFileRecord (TYPE_4__*,TYPE_3__*) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;

NTSTATUS
NtfsCreateFileRecord(PDEVICE_EXTENSION DeviceExt,
                     PFILE_OBJECT FileObject,
                     BOOLEAN CaseSensitive,
                     BOOLEAN CanWait)
{
    NTSTATUS Status = STATUS_SUCCESS;
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_ATTR_RECORD NextAttribute;
    PFILENAME_ATTRIBUTE FilenameAttribute;
    ULONGLONG ParentMftIndex;
    ULONGLONG FileMftIndex;

    DPRINT("NtfsCreateFileRecord(%p, %p, %s, %s)\n",
            DeviceExt,
            FileObject,
            CaseSensitive ? "TRUE" : "FALSE",
            CanWait ? "TRUE" : "FALSE");


    FileRecord = NtfsCreateEmptyFileRecord(DeviceExt);
    if (!FileRecord)
    {
        DPRINT1("ERROR: Unable to allocate memory for file record!\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + FileRecord->AttributeOffset);


    AddStandardInformation(FileRecord, NextAttribute);


    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)NextAttribute + (ULONG_PTR)NextAttribute->Length);


    AddFileName(FileRecord, NextAttribute, DeviceExt, FileObject, CaseSensitive, &ParentMftIndex);


    FilenameAttribute = (PFILENAME_ATTRIBUTE)((ULONG_PTR)NextAttribute + NextAttribute->Resident.ValueOffset);


    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)NextAttribute + (ULONG_PTR)NextAttribute->Length);


    AddData(FileRecord, NextAttribute);



    NtfsDumpFileRecord(DeviceExt, FileRecord);



    Status = AddNewMftEntry(FileRecord, DeviceExt, &FileMftIndex, CanWait);
    if (NT_SUCCESS(Status))
    {

        if (FileMftIndex == NTFS_FILE_ROOT)
            FileMftIndex = FileMftIndex + ((ULONGLONG)NTFS_FILE_ROOT << 48);
        else
            FileMftIndex = FileMftIndex + ((ULONGLONG)FileRecord->SequenceNumber << 48);

        DPRINT1("New File Reference: 0x%016I64x\n", FileMftIndex);


        Status = NtfsAddFilenameToDirectory(DeviceExt,
                                            ParentMftIndex,
                                            FileMftIndex,
                                            FilenameAttribute,
                                            CaseSensitive);
    }

    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);

    return Status;
}
