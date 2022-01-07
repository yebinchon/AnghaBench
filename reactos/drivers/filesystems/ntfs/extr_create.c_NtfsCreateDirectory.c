
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONGLONG ;
typedef scalar_t__ ULONG ;
struct TYPE_26__ {scalar_t__ BytesPerFileRecord; } ;
struct TYPE_29__ {int FileRecLookasideList; TYPE_2__ NtfsInfo; } ;
struct TYPE_28__ {scalar_t__ SequenceNumber; scalar_t__ AttributeOffset; int Flags; } ;
struct TYPE_25__ {scalar_t__ ValueOffset; } ;
struct TYPE_27__ {scalar_t__ Length; TYPE_1__ Resident; } ;
typedef TYPE_3__* PNTFS_ATTR_RECORD ;
typedef int PINDEX_ROOT_ATTRIBUTE ;
typedef TYPE_4__* PFILE_RECORD_HEADER ;
typedef int PFILE_OBJECT ;
typedef scalar_t__ PFILENAME_ATTRIBUTE ;
typedef TYPE_5__* PDEVICE_EXTENSION ;
typedef int PB_TREE ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int AddFileName (TYPE_4__*,TYPE_3__*,TYPE_5__*,int ,int ,scalar_t__*) ;
 int AddIndexRoot (TYPE_5__*,TYPE_4__*,TYPE_3__*,int ,scalar_t__,char*,int) ;
 int AddNewMftEntry (TYPE_4__*,TYPE_5__*,scalar_t__*,int ) ;
 int AddStandardInformation (TYPE_4__*,TYPE_3__*) ;
 int CreateEmptyBTree (int *) ;
 int CreateIndexRootFromBTree (TYPE_5__*,int ,scalar_t__,int *,scalar_t__*) ;
 int DPRINT (char*,TYPE_5__*,int ,char*,char*) ;
 int DPRINT1 (char*,...) ;
 int DestroyBTree (int ) ;
 int ExFreePoolWithTag (int ,int ) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_4__*) ;
 int FRH_DIRECTORY ;
 scalar_t__ NTFS_FILE_ROOT ;
 scalar_t__ NT_SUCCESS (int ) ;
 int NtfsAddFilenameToDirectory (TYPE_5__*,scalar_t__,scalar_t__,scalar_t__,int ) ;
 TYPE_4__* NtfsCreateEmptyFileRecord (TYPE_5__*) ;
 int NtfsDumpFileRecord (TYPE_5__*,TYPE_4__*) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TAG_NTFS ;

NTSTATUS
NtfsCreateDirectory(PDEVICE_EXTENSION DeviceExt,
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
    PB_TREE Tree;
    PINDEX_ROOT_ATTRIBUTE NewIndexRoot;
    ULONG MaxIndexRootSize;
    ULONG RootLength;

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


    FileRecord->Flags |= FRH_DIRECTORY;


    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)FileRecord + FileRecord->AttributeOffset);


    AddStandardInformation(FileRecord, NextAttribute);


    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)NextAttribute + (ULONG_PTR)NextAttribute->Length);


    AddFileName(FileRecord, NextAttribute, DeviceExt, FileObject, CaseSensitive, &ParentMftIndex);


    FilenameAttribute = (PFILENAME_ATTRIBUTE)((ULONG_PTR)NextAttribute + NextAttribute->Resident.ValueOffset);


    NextAttribute = (PNTFS_ATTR_RECORD)((ULONG_PTR)NextAttribute + (ULONG_PTR)NextAttribute->Length);


    Status = CreateEmptyBTree(&Tree);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Failed to create empty B-Tree!\n");
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }


    MaxIndexRootSize = DeviceExt->NtfsInfo.BytesPerFileRecord
                       - ((ULONG_PTR)NextAttribute - (ULONG_PTR)FileRecord)
                       - sizeof(ULONG) * 2;


    Status = CreateIndexRootFromBTree(DeviceExt,
                                      Tree,
                                      MaxIndexRootSize,
                                      &NewIndexRoot,
                                      &RootLength);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Unable to create empty index root!\n");
        DestroyBTree(Tree);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }


    DestroyBTree(Tree);


    Status = AddIndexRoot(DeviceExt, FileRecord, NextAttribute, NewIndexRoot, RootLength, L"$I30", 4);
    if (!NT_SUCCESS(Status))
    {
        DPRINT1("ERROR: Failed to add index root to new file record!\n");
        ExFreePoolWithTag(NewIndexRoot, TAG_NTFS);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }



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

    ExFreePoolWithTag(NewIndexRoot, TAG_NTFS);
    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);

    return Status;
}
