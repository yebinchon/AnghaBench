
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_8__ ;
typedef struct TYPE_31__ TYPE_7__ ;
typedef struct TYPE_30__ TYPE_6__ ;
typedef struct TYPE_29__ TYPE_5__ ;
typedef struct TYPE_28__ TYPE_4__ ;
typedef struct TYPE_27__ TYPE_3__ ;
typedef struct TYPE_26__ TYPE_2__ ;
typedef struct TYPE_25__ TYPE_1__ ;


typedef int WCHAR ;
struct TYPE_25__ {int Length; int MaximumLength; int Buffer; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_32__ {scalar_t__ QuadPart; } ;
struct TYPE_31__ {int FileRecLookasideList; } ;
struct TYPE_30__ {int DirectoryFileReferenceNumber; int NameLength; int Name; } ;
struct TYPE_29__ {int SectionObjectPointer; } ;
struct TYPE_28__ {scalar_t__ QuadPart; } ;
struct TYPE_27__ {int pRecord; } ;
struct TYPE_26__ {int Flags; int Vcb; int Stream; int ObjectName; int MFTIndex; } ;
typedef TYPE_2__* PNTFS_FCB ;
typedef TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef TYPE_4__* PLARGE_INTEGER ;
typedef int * PFILE_RECORD_HEADER ;
typedef TYPE_5__* PFILE_OBJECT ;
typedef TYPE_6__* PFILENAME_ATTRIBUTE ;
typedef TYPE_7__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef TYPE_8__ LARGE_INTEGER ;
typedef int BOOLEAN ;


 int AttributeAllocatedLength (int ) ;
 int AttributeData ;
 scalar_t__ AttributeDataLength (int ) ;
 int DPRINT (char*,...) ;
 int DPRINT1 (char*,...) ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,int *) ;
 int FALSE ;
 int FCB_IS_VOLUME ;
 int FindAttribute (TYPE_7__*,int *,int ,int ,int ,TYPE_3__**,int*) ;
 TYPE_6__* GetBestFileNameFromRecord (int ,int *) ;
 int IRP_PAGING_IO ;
 int MmCanFileBeTruncated (int ,TYPE_4__*) ;
 int NTFS_MFT_MASK ;
 int NT_SUCCESS (int ) ;
 scalar_t__ NtfsGetFileSize (TYPE_7__*,int *,char*,int ,int *) ;
 int ReadFileRecord (TYPE_7__*,int ,int *) ;
 int ReleaseAttributeContext (TYPE_3__*) ;
 int STATUS_ACCESS_DENIED ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int STATUS_USER_MAPPED_FILE ;
 int SetAttributeDataLength (TYPE_5__*,TYPE_2__*,TYPE_3__*,int,int *,TYPE_4__*) ;
 int UpdateFileNameRecord (int ,int,TYPE_1__*,int ,scalar_t__,int,int ) ;
 int wcslen (int ) ;

NTSTATUS
NtfsSetEndOfFile(PNTFS_FCB Fcb,
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



    FileRecord = ExAllocateFromNPagedLookasideList(&DeviceExt->FileRecLookasideList);
    if (FileRecord == ((void*)0))
    {
        DPRINT1("Couldn't allocate memory for file record!");
        return STATUS_INSUFFICIENT_RESOURCES;
    }


    DPRINT("Reading file record...\n");
    Status = ReadFileRecord(DeviceExt, Fcb->MFTIndex, FileRecord);
    if (!NT_SUCCESS(Status))
    {

        DPRINT1("Can't find record for %wS!\n", Fcb->ObjectName);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }

    DPRINT("Found record for %wS\n", Fcb->ObjectName);

    CurrentFileSize.QuadPart = NtfsGetFileSize(DeviceExt, FileRecord, L"", 0, ((void*)0));


    if (NewFileSize->QuadPart < CurrentFileSize.QuadPart)
    {

        if (!MmCanFileBeTruncated(FileObject->SectionObjectPointer,
                                  NewFileSize))
        {
            DPRINT1("Couldn't decrease file size!\n");
            ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
            return STATUS_USER_MAPPED_FILE;
        }
    }


    DPRINT("Finding Data Attribute...\n");
    Status = FindAttribute(DeviceExt,
                           FileRecord,
                           AttributeData,
                           Fcb->Stream,
                           wcslen(Fcb->Stream),
                           &DataContext,
                           &AttributeOffset);


    if (!NT_SUCCESS(Status))
    {
        DPRINT1("No '%S' data stream associated with file!\n", Fcb->Stream);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }


    CurrentFileSize.QuadPart = AttributeDataLength(DataContext->pRecord);


    if (NewFileSize->QuadPart > CurrentFileSize.QuadPart)
    {

        if ((Fcb->Flags & FCB_IS_VOLUME) ||
            (IrpFlags & IRP_PAGING_IO))
        {

            ReleaseAttributeContext(DataContext);
            ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
            return STATUS_ACCESS_DENIED;
        }
    }


    Status = SetAttributeDataLength(FileObject, Fcb, DataContext, AttributeOffset, FileRecord, NewFileSize);
    if (!NT_SUCCESS(Status))
    {
        ReleaseAttributeContext(DataContext);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return Status;
    }



    FileNameAttribute = GetBestFileNameFromRecord(Fcb->Vcb, FileRecord);
    if (FileNameAttribute == ((void*)0))
    {
        DPRINT1("Unable to find FileName attribute associated with file!\n");
        ReleaseAttributeContext(DataContext);
        ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);
        return STATUS_INVALID_PARAMETER;
    }

    ParentMFTId = FileNameAttribute->DirectoryFileReferenceNumber & NTFS_MFT_MASK;

    FileName.Buffer = FileNameAttribute->Name;
    FileName.Length = FileNameAttribute->NameLength * sizeof(WCHAR);
    FileName.MaximumLength = FileName.Length;

    AllocationSize = AttributeAllocatedLength(DataContext->pRecord);

    Status = UpdateFileNameRecord(Fcb->Vcb,
                                  ParentMFTId,
                                  &FileName,
                                  FALSE,
                                  NewFileSize->QuadPart,
                                  AllocationSize,
                                  CaseSensitive);

    ReleaseAttributeContext(DataContext);
    ExFreeToNPagedLookasideList(&DeviceExt->FileRecLookasideList, FileRecord);

    return Status;
}
