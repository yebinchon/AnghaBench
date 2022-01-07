
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG_PTR ;
typedef int ULONG64 ;
typedef scalar_t__ PCHAR ;
typedef int CHAR ;


 int GspMemoryError ;
 int KdpCopyMemoryChunks (int ,int *,int,int ,int ,int *) ;
 int MMDBG_COPY_UNSAFE ;
 int MmDbgCopyMemory (int ,int *,int,int ) ;
 int NT_SUCCESS (int ) ;
 int TRUE ;

__attribute__((used)) static CHAR
GspReadMemSafe(PCHAR Address)
{
    CHAR Ch = 0;





    if (!NT_SUCCESS(MmDbgCopyMemory((ULONG64)(ULONG_PTR)Address, &Ch, 1,
                                    MMDBG_COPY_UNSAFE)))

    {
        GspMemoryError = TRUE;
    }

    return Ch;
}
