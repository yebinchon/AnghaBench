
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_36__ TYPE_9__ ;
typedef struct TYPE_35__ TYPE_8__ ;
typedef struct TYPE_34__ TYPE_7__ ;
typedef struct TYPE_33__ TYPE_6__ ;
typedef struct TYPE_32__ TYPE_5__ ;
typedef struct TYPE_31__ TYPE_4__ ;
typedef struct TYPE_30__ TYPE_3__ ;
typedef struct TYPE_29__ TYPE_2__ ;
typedef struct TYPE_28__ TYPE_1__ ;


struct TYPE_36__ {int * Name; scalar_t__ NameLength; int NameType; } ;
struct TYPE_35__ {int AllocatedSize; int DataSize; int NameType; } ;
struct TYPE_34__ {int LinkCount; } ;
struct TYPE_30__ {int QuadPart; } ;
struct TYPE_29__ {int QuadPart; } ;
struct TYPE_28__ {int QuadPart; } ;
struct TYPE_31__ {TYPE_3__ AllocationSize; TYPE_2__ ValidDataLength; TYPE_1__ FileSize; } ;
struct TYPE_33__ {int RefCount; int LinkCount; int MFTIndex; TYPE_4__ RFCB; scalar_t__ DirIndex; TYPE_9__ Entry; } ;
struct TYPE_32__ {int FileRecLookasideList; } ;
typedef TYPE_5__* PNTFS_VCB ;
typedef TYPE_6__* PNTFS_FCB ;
typedef TYPE_7__* PFILE_RECORD_HEADER ;
typedef TYPE_8__* PFILENAME_ATTRIBUTE ;


 TYPE_7__* ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_7__*) ;
 int FIELD_OFFSET (int ,int ) ;
 int FILENAME_ATTRIBUTE ;
 TYPE_8__* GetFileNameFromRecord (TYPE_5__*,TYPE_7__*,int ) ;
 int NTFS_FILE_NAME_WIN32 ;
 int NTFS_FILE_ROOT ;
 int NT_SUCCESS (int ) ;
 int NameLength ;
 int NtfsAddFCBToTable (TYPE_5__*,TYPE_6__*) ;
 TYPE_6__* NtfsCreateFCB (char*,int *,TYPE_5__*) ;
 int NtfsFCBInitializeCache (TYPE_5__*,TYPE_6__*) ;
 int NtfsGrabFCB (TYPE_5__*,TYPE_6__*) ;
 int ReadFileRecord (TYPE_5__*,int ,TYPE_7__*) ;
 int UNICODE_NULL ;
 int memcpy (TYPE_9__*,TYPE_8__*,int ) ;

PNTFS_FCB
NtfsMakeRootFCB(PNTFS_VCB Vcb)
{
    PNTFS_FCB Fcb;
    PFILE_RECORD_HEADER MftRecord;
    PFILENAME_ATTRIBUTE FileName;

    MftRecord = ExAllocateFromNPagedLookasideList(&Vcb->FileRecLookasideList);
    if (MftRecord == ((void*)0))
    {
        return ((void*)0);
    }

    if (!NT_SUCCESS(ReadFileRecord(Vcb, NTFS_FILE_ROOT, MftRecord)))
    {
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MftRecord);
        return ((void*)0);
    }

    FileName = GetFileNameFromRecord(Vcb, MftRecord, NTFS_FILE_NAME_WIN32);
    if (!FileName)
    {
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MftRecord);
        return ((void*)0);
    }

    Fcb = NtfsCreateFCB(L"\\", ((void*)0), Vcb);
    if (!Fcb)
    {
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MftRecord);
        return ((void*)0);
    }

    memcpy(&Fcb->Entry, FileName, FIELD_OFFSET(FILENAME_ATTRIBUTE, NameLength));
    Fcb->Entry.NameType = FileName->NameType;
    Fcb->Entry.NameLength = 0;
    Fcb->Entry.Name[0] = UNICODE_NULL;
    Fcb->RefCount = 1;
    Fcb->DirIndex = 0;
    Fcb->RFCB.FileSize.QuadPart = FileName->DataSize;
    Fcb->RFCB.ValidDataLength.QuadPart = FileName->DataSize;
    Fcb->RFCB.AllocationSize.QuadPart = FileName->AllocatedSize;
    Fcb->MFTIndex = NTFS_FILE_ROOT;
    Fcb->LinkCount = MftRecord->LinkCount;

    NtfsFCBInitializeCache(Vcb, Fcb);
    NtfsAddFCBToTable(Vcb, Fcb);
    NtfsGrabFCB(Vcb, Fcb);

    ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, MftRecord);

    return Fcb;
}
