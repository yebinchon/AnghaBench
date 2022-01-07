
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_14__ {int pRecord; } ;
struct TYPE_13__ {int MFTIndex; } ;
struct TYPE_12__ {int FileRecLookasideList; } ;
typedef int * PVOID ;
typedef TYPE_1__* PNTFS_VCB ;
typedef TYPE_2__* PNTFS_FCB ;
typedef TYPE_3__* PNTFS_ATTR_CONTEXT ;
typedef int * PFILE_RECORD_HEADER ;
typedef int PCWSTR ;
typedef int NTSTATUS ;


 int AttributeDataLength (int ) ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int * ExAllocatePoolWithTag (int ,int ,int ) ;
 int ExFreeToNPagedLookasideList (int *,int *) ;
 int FindAttribute (TYPE_1__*,int *,int ,int ,int ,TYPE_3__**,int *) ;
 int NT_SUCCESS (int ) ;
 int NonPagedPool ;
 int ReadAttribute (TYPE_1__*,TYPE_3__*,int ,int *,int ) ;
 int ReadFileRecord (TYPE_1__*,int ,int *) ;
 int ReleaseAttributeContext (TYPE_3__*) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;
 int TAG_NTFS ;

NTSTATUS
NtfsReadFCBAttribute(PNTFS_VCB Vcb,
                     PNTFS_FCB pFCB,
                     ULONG Type,
                     PCWSTR Name,
                     ULONG NameLength,
                     PVOID * Data)
{
    NTSTATUS Status;
    PFILE_RECORD_HEADER FileRecord;
    PNTFS_ATTR_CONTEXT AttrCtxt;
    ULONGLONG AttrLength;

    FileRecord = ExAllocateFromNPagedLookasideList(&Vcb->FileRecLookasideList);
    if (FileRecord == ((void*)0))
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = ReadFileRecord(Vcb, pFCB->MFTIndex, FileRecord);
    if (!NT_SUCCESS(Status))
    {
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, FileRecord);
        return Status;
    }

    Status = FindAttribute(Vcb, FileRecord, Type, Name, NameLength, &AttrCtxt, ((void*)0));
    if (!NT_SUCCESS(Status))
    {
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, FileRecord);
        return Status;
    }

    AttrLength = AttributeDataLength(AttrCtxt->pRecord);
    *Data = ExAllocatePoolWithTag(NonPagedPool, AttrLength, TAG_NTFS);
    if (*Data == ((void*)0))
    {
        ReleaseAttributeContext(AttrCtxt);
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, FileRecord);
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    ReadAttribute(Vcb, AttrCtxt, 0, *Data, AttrLength);

    ReleaseAttributeContext(AttrCtxt);
    ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, FileRecord);

    return STATUS_SUCCESS;
}
