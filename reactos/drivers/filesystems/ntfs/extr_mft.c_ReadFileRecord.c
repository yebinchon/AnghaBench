
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int ULONGLONG ;
struct TYPE_9__ {int BytesPerFileRecord; } ;
struct TYPE_11__ {TYPE_1__ NtfsInfo; int MFTContext; } ;
struct TYPE_10__ {int Ntfs; int SequenceNumber; } ;
typedef TYPE_2__* PFILE_RECORD_HEADER ;
typedef TYPE_3__* PDEVICE_EXTENSION ;
typedef int PCHAR ;
typedef int NTSTATUS ;


 int DPRINT (char*,TYPE_3__*,...) ;
 int DPRINT1 (char*,int,int) ;
 int FixupUpdateSequenceArray (TYPE_3__*,int *) ;
 int ReadAttribute (TYPE_3__*,int ,int,int ,int) ;
 int STATUS_PARTIAL_COPY ;

NTSTATUS
ReadFileRecord(PDEVICE_EXTENSION Vcb,
               ULONGLONG index,
               PFILE_RECORD_HEADER file)
{
    ULONGLONG BytesRead;

    DPRINT("ReadFileRecord(%p, %I64x, %p)\n", Vcb, index, file);

    BytesRead = ReadAttribute(Vcb, Vcb->MFTContext, index * Vcb->NtfsInfo.BytesPerFileRecord, (PCHAR)file, Vcb->NtfsInfo.BytesPerFileRecord);
    if (BytesRead != Vcb->NtfsInfo.BytesPerFileRecord)
    {
        DPRINT1("ReadFileRecord failed: %I64u read, %lu expected\n", BytesRead, Vcb->NtfsInfo.BytesPerFileRecord);
        return STATUS_PARTIAL_COPY;
    }


    DPRINT("Sequence number: %u\n", file->SequenceNumber);
    return FixupUpdateSequenceArray(Vcb, &file->Ntfs);
}
