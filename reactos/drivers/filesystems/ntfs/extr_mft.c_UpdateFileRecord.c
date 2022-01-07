
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int ULONGLONG ;
typedef int ULONG ;
struct TYPE_12__ {int BytesPerFileRecord; } ;
struct TYPE_14__ {TYPE_1__ NtfsInfo; int MFTContext; } ;
struct TYPE_13__ {int Ntfs; } ;
typedef int PUCHAR ;
typedef TYPE_2__* PFILE_RECORD_HEADER ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int NTSTATUS ;


 int AddFixupArray (TYPE_3__*,int *) ;
 int DPRINT (char*,TYPE_3__*,int,TYPE_2__*) ;
 int DPRINT1 (char*,int ,int) ;
 int FixupUpdateSequenceArray (TYPE_3__*,int *) ;
 int NT_SUCCESS (int ) ;
 int STATUS_SUCCESS ;
 int WriteAttribute (TYPE_3__*,int ,int,int const,int,int *,TYPE_2__*) ;

NTSTATUS
UpdateFileRecord(PDEVICE_EXTENSION Vcb,
                 ULONGLONG MftIndex,
                 PFILE_RECORD_HEADER FileRecord)
{
    ULONG BytesWritten;
    NTSTATUS Status = STATUS_SUCCESS;

    DPRINT("UpdateFileRecord(%p, 0x%I64x, %p)\n", Vcb, MftIndex, FileRecord);


    AddFixupArray(Vcb, &FileRecord->Ntfs);


    Status = WriteAttribute(Vcb,
                            Vcb->MFTContext,
                            MftIndex * Vcb->NtfsInfo.BytesPerFileRecord,
                            (const PUCHAR)FileRecord,
                            Vcb->NtfsInfo.BytesPerFileRecord,
                            &BytesWritten,
                            FileRecord);

    if (!NT_SUCCESS(Status))
    {
        DPRINT1("UpdateFileRecord failed: %lu written, %lu expected\n", BytesWritten, Vcb->NtfsInfo.BytesPerFileRecord);
    }


    FixupUpdateSequenceArray(Vcb, &FileRecord->Ntfs);

    return Status;
}
