
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_12__ {scalar_t__ Length; } ;
typedef TYPE_1__ UNICODE_STRING ;
typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_13__ {int FileRecLookasideList; } ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int * PULONGLONG ;
typedef int * PFILE_RECORD_HEADER ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;
typedef scalar_t__ BOOLEAN ;


 int DPRINT (char*,...) ;
 int * ExAllocateFromNPagedLookasideList (int *) ;
 int ExFreeToNPagedLookasideList (int *,int *) ;
 int FALSE ;
 int FsRtlDissectName (TYPE_1__,TYPE_1__*,TYPE_1__*) ;
 int NT_SUCCESS (int ) ;
 int NtfsFindMftRecord (TYPE_3__*,int ,TYPE_1__*,int *,int ,scalar_t__,int *) ;
 int ReadFileRecord (TYPE_3__*,int ,int *) ;
 int STATUS_INSUFFICIENT_RESOURCES ;
 int STATUS_SUCCESS ;

NTSTATUS
NtfsLookupFileAt(PDEVICE_EXTENSION Vcb,
                 PUNICODE_STRING PathName,
                 BOOLEAN CaseSensitive,
                 PFILE_RECORD_HEADER *FileRecord,
                 PULONGLONG MFTIndex,
                 ULONGLONG CurrentMFTIndex)
{
    UNICODE_STRING Current, Remaining;
    NTSTATUS Status;
    ULONG FirstEntry = 0;

    DPRINT("NtfsLookupFileAt(%p, %wZ, %s, %p, %p, %I64x)\n",
           Vcb,
           PathName,
           CaseSensitive ? "TRUE" : "FALSE",
           FileRecord,
           MFTIndex,
           CurrentMFTIndex);

    FsRtlDissectName(*PathName, &Current, &Remaining);

    while (Current.Length != 0)
    {
        DPRINT("Current: %wZ\n", &Current);

        Status = NtfsFindMftRecord(Vcb, CurrentMFTIndex, &Current, &FirstEntry, FALSE, CaseSensitive, &CurrentMFTIndex);
        if (!NT_SUCCESS(Status))
        {
            return Status;
        }

        if (Remaining.Length == 0)
            break;

        FsRtlDissectName(Current, &Current, &Remaining);
    }

    *FileRecord = ExAllocateFromNPagedLookasideList(&Vcb->FileRecLookasideList);
    if (*FileRecord == ((void*)0))
    {
        DPRINT("NtfsLookupFileAt: Can't allocate MFT record\n");
        return STATUS_INSUFFICIENT_RESOURCES;
    }

    Status = ReadFileRecord(Vcb, CurrentMFTIndex, *FileRecord);
    if (!NT_SUCCESS(Status))
    {
        DPRINT("NtfsLookupFileAt: Can't read MFT record\n");
        ExFreeToNPagedLookasideList(&Vcb->FileRecLookasideList, *FileRecord);
        return Status;
    }

    *MFTIndex = CurrentMFTIndex;

    return STATUS_SUCCESS;
}
