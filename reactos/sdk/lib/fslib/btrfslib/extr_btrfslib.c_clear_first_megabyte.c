
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {scalar_t__ QuadPart; } ;
typedef int NTSTATUS ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef int IO_STATUS_BLOCK ;
typedef int HANDLE ;


 int HEAP_ZERO_MEMORY ;
 int NtWriteFile (int ,int *,int *,int *,int *,int *,int,TYPE_1__*,int *) ;
 int * RtlAllocateHeap (int ,int ,int) ;
 int RtlFreeHeap (int ,int ,int *) ;
 int RtlGetProcessHeap () ;
 int free (int *) ;
 int * malloc (int) ;
 int memset (int *,int ,int) ;

__attribute__((used)) static NTSTATUS clear_first_megabyte(HANDLE h) {
    NTSTATUS Status;
    IO_STATUS_BLOCK iosb;
    LARGE_INTEGER zero;
    uint8_t* mb;


    mb = malloc(0x100000);
    memset(mb, 0, 0x100000);




    zero.QuadPart = 0;

    Status = NtWriteFile(h, ((void*)0), ((void*)0), ((void*)0), &iosb, mb, 0x100000, &zero, ((void*)0));


    free(mb);




    return Status;
}
