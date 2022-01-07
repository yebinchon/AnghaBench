
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_4__ ;
typedef struct TYPE_26__ TYPE_3__ ;
typedef struct TYPE_25__ TYPE_2__ ;
typedef struct TYPE_24__ TYPE_1__ ;


typedef int WCHAR ;
typedef int USHORT ;
struct TYPE_24__ {int Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONGLONG ;
struct TYPE_27__ {int Flags; } ;
struct TYPE_26__ {int MFTIndex; } ;
struct TYPE_25__ {int FileRecLookasideList; } ;
typedef int* PWSTR ;
typedef TYPE_2__* PNTFS_VCB ;
typedef TYPE_3__* PNTFS_FCB ;
typedef int PNTFS_ATTR_CONTEXT ;
typedef TYPE_4__* PFILE_RECORD_HEADER ;
typedef int NTSTATUS ;
typedef int BOOLEAN ;


 int AttributeData ;
 int DPRINT (char*,TYPE_2__*,TYPE_3__*,int*,char*,TYPE_3__**) ;
 int DPRINT1 (char*,TYPE_1__*,int*) ;
 int ExFreeToNPagedLookasideList (int *,TYPE_4__*) ;
 int FRH_DIRECTORY ;
 int FindAttribute (TYPE_2__*,TYPE_4__*,int ,int*,int ,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int NtfsLookupFileAt (TYPE_2__*,TYPE_1__*,int ,TYPE_4__**,int *,int ) ;
 int NtfsMakeFCBFromDirEntry (TYPE_2__*,TYPE_3__*,TYPE_1__*,int*,TYPE_4__*,int ,TYPE_3__**) ;
 int ReleaseAttributeContext (int ) ;
 int RtlInitUnicodeString (TYPE_1__*,int*) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_OBJECT_NAME_NOT_FOUND ;
 int UNICODE_NULL ;
 scalar_t__ _wcsicmp (int*,char*) ;
 int wcslen (int*) ;
 int* wcsrchr (int*,int) ;

__attribute__((used)) static NTSTATUS
NtfsDirFindFile(PNTFS_VCB Vcb,
                PNTFS_FCB DirectoryFcb,
                PWSTR FileToFind,
                BOOLEAN CaseSensitive,
                PNTFS_FCB *FoundFCB)
{
    NTSTATUS Status;
    ULONGLONG CurrentDir;
    UNICODE_STRING File;
    PFILE_RECORD_HEADER FileRecord;
    ULONGLONG MFTIndex;
    PWSTR Colon, OldColon;
    PNTFS_ATTR_CONTEXT DataContext;
    USHORT Length = 0;

    DPRINT("NtfsDirFindFile(%p, %p, %S, %s, %p)\n",
           Vcb,
           DirectoryFcb,
           FileToFind,
           CaseSensitive ? "TRUE" : "FALSE",
           FoundFCB);

    *FoundFCB = ((void*)0);
    RtlInitUnicodeString(&File, FileToFind);
    CurrentDir = DirectoryFcb->MFTIndex;

    Colon = wcsrchr(FileToFind, L':');
    if (Colon != ((void*)0))
    {
        Length = File.Length;
        File.Length = (Colon - FileToFind) * sizeof(WCHAR);

        if (_wcsicmp(Colon + 1, L"$DATA") == 0)
        {
            OldColon = Colon;
            Colon[0] = UNICODE_NULL;
            Colon = wcsrchr(FileToFind, L':');
            if (Colon != ((void*)0))
            {
                Length = File.Length;
                File.Length = (Colon - FileToFind) * sizeof(WCHAR);
            }
            else
            {
                Colon = OldColon;
                Colon[0] = L':';
            }
        }


        ++Colon;
        DPRINT1("Will now look for file '%wZ' with stream '%S'\n", &File, Colon);
    }

    Status = NtfsLookupFileAt(Vcb, &File, CaseSensitive, &FileRecord, &MFTIndex, CurrentDir);
    if (!NT_SUCCESS(Status))
    {
        return Status;
    }

    if (Length != 0)
    {
        File.Length = Length;
    }

    if ((FileRecord->Flags & FRH_DIRECTORY) && Colon != 0)
    {
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, FileRecord);
        return STATUS_INVALID_PARAMETER;
    }
    else if (Colon != 0)
    {
        Status = FindAttribute(Vcb, FileRecord, AttributeData, Colon, wcslen(Colon), &DataContext, ((void*)0));
        if (!NT_SUCCESS(Status))
        {
            return STATUS_OBJECT_NAME_NOT_FOUND;
        }
        ReleaseAttributeContext(DataContext);
    }

    Status = NtfsMakeFCBFromDirEntry(Vcb, DirectoryFcb, &File, Colon, FileRecord, MFTIndex, FoundFCB);
    ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, FileRecord);

    return Status;
}
