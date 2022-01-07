
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int VOID ;
typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
struct TYPE_4__ {scalar_t__ BytesInUse; } ;
typedef int * PUCHAR ;
typedef TYPE_1__* PFILE_RECORD_HEADER ;
typedef int PDEVICE_EXTENSION ;


 int DbgPrint (char*,...) ;
 int NtfsDumpFileAttributes (int ,TYPE_1__*) ;

VOID
NtfsDumpFileRecord(PDEVICE_EXTENSION Vcb,
                   PFILE_RECORD_HEADER FileRecord)
{
    ULONG i, j;


    for (i = 0; i < FileRecord->BytesInUse; i += 8)
    {

        DbgPrint("\t%03x\t", i);


        for (j = 0; j < 8; j++)
            DbgPrint("%02x ", *(PUCHAR)((ULONG_PTR)FileRecord + i + j));
        DbgPrint("\n");
    }

    NtfsDumpFileAttributes(Vcb, FileRecord);
}
