
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PVOID ;
typedef int PLARGE_INTEGER ;
typedef int PIO_STATUS_BLOCK ;
typedef int NTSTATUS ;
typedef int HANDLE ;


 int ZwWriteFile (int ,int *,int *,int *,int ,int ,int ,int ,int *) ;

NTSTATUS FsRltTest_WritefileZw(HANDLE fh, PLARGE_INTEGER Offset, ULONG Length, PVOID Buffer, PIO_STATUS_BLOCK pIoStatus){
    NTSTATUS Return;

    Return = ZwWriteFile(
        fh,
        ((void*)0),
        ((void*)0),
        ((void*)0),
        pIoStatus,
        Buffer,
        Length,
        Offset,
        ((void*)0)
        );

    return Return;
}
