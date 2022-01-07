
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int ULONG_PTR ;
typedef scalar_t__ SIZE_T ;
typedef scalar_t__ PVOID ;
typedef int NTSTATUS ;


 int MEM_RELEASE ;
 int MEM_RESERVE ;
 int NT_SUCCESS (int ) ;
 int NtAllocateVirtualMemory (int ,scalar_t__*,int ,scalar_t__*,int ,int ) ;
 int NtCurrentProcess () ;
 int NtFreeVirtualMemory (int ,scalar_t__*,scalar_t__*,int ) ;
 int PAGE_NOACCESS ;
 int ok (int,char*,...) ;

VOID
CheckSize(ULONG_PTR Base, SIZE_T InSize, SIZE_T ExpectedSize)
{
    NTSTATUS Status;
    PVOID BaseAddress;
    SIZE_T Size;


    BaseAddress = (PVOID)Base;
    Size = InSize;
    Status = NtAllocateVirtualMemory(NtCurrentProcess(),
                                     &BaseAddress,
                                     0,
                                     &Size,
                                     MEM_RESERVE,
                                     PAGE_NOACCESS);
    ok(NT_SUCCESS(Status), "NtAllocateVirtualMemory failed!\n");
    ok(BaseAddress == (PVOID)(Base & ~((ULONG_PTR)0xFFFF)), "Got back wrong base address: %p\n", BaseAddress);
    ok(Size == ExpectedSize, "Alloc of 0x%Ix: got back wrong size: 0x%Ix, expected 0x%Ix\n", InSize, Size, ExpectedSize);
    Status = NtFreeVirtualMemory(NtCurrentProcess(), &BaseAddress, &Size, MEM_RELEASE);
    ok(NT_SUCCESS(Status), "NtFreeVirtualMemory failed!\n");
}
