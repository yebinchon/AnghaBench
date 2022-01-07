
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef scalar_t__ ULONG ;
typedef int * PUCHAR ;


 int DbgPrint (char*,...) ;

void
NtfsDumpData(ULONG_PTR Buffer, ULONG Length)
{
    ULONG i, j;


    for (i = 0; i < Length; i += 8)
    {

        DbgPrint("\t%03x\t", i);


        for (j = 0; j < 8; j++)
            DbgPrint("%02x ", *(PUCHAR)(Buffer + i + j));
        DbgPrint("\n");
    }
}
