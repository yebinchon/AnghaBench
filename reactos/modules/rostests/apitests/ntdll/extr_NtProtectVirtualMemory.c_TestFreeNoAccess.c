
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int SIZE_T ;
typedef int* PVOID ;
typedef int* PUCHAR ;
typedef int NTSTATUS ;


 int MEM_COMMIT ;
 int MEM_RELEASE ;
 int NT_SUCCESS (int ) ;
 int NtAllocateVirtualMemory (int ,int**,int ,int*,int ,int ) ;
 int NtCurrentProcess () ;
 int NtFreeVirtualMemory (int ,int**,int*,int ) ;
 int NtProtectVirtualMemory (int ,int**,int*,int ,int*) ;
 int PAGE_NOACCESS ;
 int PAGE_READWRITE ;
 int PAGE_SIZE ;
 int STATUS_SUCCESS ;
 int ok (int,char*,int,int,int,int*) ;
 int ok_hex (int,int ) ;
 int ok_ntstatus (int ,int ) ;

__attribute__((used)) static
void
TestFreeNoAccess(void)
{
    PVOID Mem;
    SIZE_T Size;
    NTSTATUS Status;
    ULONG Iteration, PageNumber;
    PUCHAR Page;
    ULONG OldProtection;

    for (Iteration = 0; Iteration < 50000; Iteration++)
    {
        Mem = ((void*)0);
        Size = 16 * PAGE_SIZE;
        Status = NtAllocateVirtualMemory(NtCurrentProcess(),
                                         &Mem,
                                         0,
                                         &Size,
                                         MEM_COMMIT,
                                         PAGE_READWRITE);
        ok_ntstatus(Status, STATUS_SUCCESS);
        if (!NT_SUCCESS(Status))
        {
            break;
        }

        for (PageNumber = 0; PageNumber < 16; PageNumber++)
        {
            Page = Mem;
            Page += PageNumber * PAGE_SIZE;
            ok(*Page == 0,
               "[%lu, %lu] Got non-zero memory. %x at %p\n",
               Iteration, PageNumber, *Page, Page);
            *Page = 123;
        }

        Status = NtProtectVirtualMemory(NtCurrentProcess(),
                                        &Mem,
                                        &Size,
                                        PAGE_NOACCESS,
                                        &OldProtection);
        ok_ntstatus(Status, STATUS_SUCCESS);
        ok_hex(OldProtection, PAGE_READWRITE);

        Size = 0;
        Status = NtFreeVirtualMemory(NtCurrentProcess(),
                                     &Mem,
                                     &Size,
                                     MEM_RELEASE);
        ok_ntstatus(Status, STATUS_SUCCESS);
    }
}
