
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_38__ TYPE_9__ ;
typedef struct TYPE_37__ TYPE_8__ ;
typedef struct TYPE_36__ TYPE_7__ ;
typedef struct TYPE_35__ TYPE_6__ ;
typedef struct TYPE_34__ TYPE_5__ ;
typedef struct TYPE_33__ TYPE_4__ ;
typedef struct TYPE_32__ TYPE_3__ ;
typedef struct TYPE_31__ TYPE_2__ ;
typedef struct TYPE_30__ TYPE_1__ ;
typedef struct TYPE_29__ TYPE_10__ ;


typedef int WCHAR ;
typedef void* ULONGLONG ;
struct TYPE_38__ {int NameLength; int NameType; int Name; } ;
struct TYPE_37__ {int LinkCount; } ;
struct TYPE_29__ {int FileAttributes; int NameType; } ;
struct TYPE_32__ {void* QuadPart; } ;
struct TYPE_31__ {void* QuadPart; } ;
struct TYPE_30__ {void* QuadPart; } ;
struct TYPE_33__ {TYPE_3__ AllocationSize; TYPE_2__ ValidDataLength; TYPE_1__ FileSize; } ;
struct TYPE_36__ {char* PathName; int RefCount; int LinkCount; void* MFTIndex; TYPE_10__ Entry; TYPE_4__ RFCB; } ;
struct TYPE_35__ {int FileAttribute; } ;
struct TYPE_34__ {scalar_t__* Buffer; int Length; } ;
typedef TYPE_5__* PUNICODE_STRING ;
typedef TYPE_6__* PSTANDARD_INFORMATION ;
typedef int PNTFS_VCB ;
typedef TYPE_7__* PNTFS_FCB ;
typedef TYPE_8__* PFILE_RECORD_HEADER ;
typedef TYPE_9__* PFILENAME_ATTRIBUTE ;
typedef char* PCWSTR ;
typedef int NTSTATUS ;


 int DPRINT (char*,int ,TYPE_7__*,TYPE_5__*,char*,TYPE_8__*,TYPE_7__**) ;
 int FIELD_OFFSET (int ,int ) ;
 int FILENAME_ATTRIBUTE ;
 TYPE_9__* GetBestFileNameFromRecord (int ,TYPE_8__*) ;
 TYPE_6__* GetStandardInformationFromRecord (int ,TYPE_8__*) ;
 int MAX_PATH ;
 int NameLength ;
 int NtfsAddFCBToTable (int ,TYPE_7__*) ;
 TYPE_7__* NtfsCreateFCB (int *,char*,int ) ;
 int NtfsFCBInitializeCache (int ,TYPE_7__*) ;
 int NtfsFCBIsRoot (TYPE_7__*) ;
 void* NtfsGetFileSize (int ,TYPE_8__*,char*,int,void**) ;
 int RtlCopyMemory (int *,int ,int) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_OBJECT_NAME_INVALID ;
 int STATUS_OBJECT_NAME_NOT_FOUND ;
 int STATUS_SUCCESS ;
 int UNICODE_NULL ;
 int memcpy (TYPE_10__*,TYPE_9__*,int ) ;
 int wcscat (int *,char*) ;
 int wcscpy (int *,char*) ;
 int wcslen (char*) ;

NTSTATUS
NtfsMakeFCBFromDirEntry(PNTFS_VCB Vcb,
                        PNTFS_FCB DirectoryFCB,
                        PUNICODE_STRING Name,
                        PCWSTR Stream,
                        PFILE_RECORD_HEADER Record,
                        ULONGLONG MFTIndex,
                        PNTFS_FCB * fileFCB)
{
    WCHAR pathName[MAX_PATH];
    PFILENAME_ATTRIBUTE FileName;
    PSTANDARD_INFORMATION StdInfo;
    PNTFS_FCB rcFCB;
    ULONGLONG Size, AllocatedSize;

    DPRINT("NtfsMakeFCBFromDirEntry(%p, %p, %wZ, %p, %p, %p)\n", Vcb, DirectoryFCB, Name, Stream, Record, fileFCB);

    FileName = GetBestFileNameFromRecord(Vcb, Record);
    if (!FileName)
    {
        return STATUS_OBJECT_NAME_NOT_FOUND;
    }

    if (DirectoryFCB && Name)
    {
        if (Name->Buffer[0] != 0 && wcslen(DirectoryFCB->PathName) +
            sizeof(WCHAR) + Name->Length / sizeof(WCHAR) > MAX_PATH)
        {
            return STATUS_OBJECT_NAME_INVALID;
        }

        wcscpy(pathName, DirectoryFCB->PathName);
        if (!NtfsFCBIsRoot(DirectoryFCB))
        {
            wcscat(pathName, L"\\");
        }
        wcscat(pathName, Name->Buffer);
    }
    else
    {
        RtlCopyMemory(pathName, FileName->Name, FileName->NameLength * sizeof (WCHAR));
        pathName[FileName->NameLength] = UNICODE_NULL;
    }

    Size = NtfsGetFileSize(Vcb, Record, (Stream ? Stream : L""), (Stream ? wcslen(Stream) : 0), &AllocatedSize);

    rcFCB = NtfsCreateFCB(pathName, Stream, Vcb);
    if (!rcFCB)
    {
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    memcpy(&rcFCB->Entry, FileName, FIELD_OFFSET(FILENAME_ATTRIBUTE, NameLength));
    rcFCB->Entry.NameType = FileName->NameType;
    rcFCB->RFCB.FileSize.QuadPart = Size;
    rcFCB->RFCB.ValidDataLength.QuadPart = Size;
    rcFCB->RFCB.AllocationSize.QuadPart = AllocatedSize;

    StdInfo = GetStandardInformationFromRecord(Vcb, Record);
    if (StdInfo != ((void*)0))
    {
        rcFCB->Entry.FileAttributes |= StdInfo->FileAttribute;
    }

    NtfsFCBInitializeCache(Vcb, rcFCB);
    rcFCB->RefCount = 1;
    rcFCB->MFTIndex = MFTIndex;
    rcFCB->LinkCount = Record->LinkCount;
    NtfsAddFCBToTable(Vcb, rcFCB);
    *fileFCB = rcFCB;

    return STATUS_SUCCESS;
}
