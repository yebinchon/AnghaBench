
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ SIZE_T ;
typedef int * PVOID ;
typedef int * PCHAR ;
typedef scalar_t__ NTSTATUS ;


 int MEM_COMMIT ;
 int MEM_RELEASE ;
 int MEM_RESERVE ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtAllocateVirtualMemory (int ,int **,int ,scalar_t__*,int ,int ) ;
 int NtCurrentProcess () ;
 scalar_t__ NtFreeVirtualMemory (int ,int **,scalar_t__*,int ) ;
 int PAGE_NOACCESS ;
 int PAGE_READWRITE ;
 scalar_t__ PAGE_ROUND_UP (scalar_t__) ;
 scalar_t__ PAGE_SIZE ;
 scalar_t__ STATUS_SUCCESS ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static
PVOID
AllocateGuarded(
    SIZE_T SizeRequested)
{
    NTSTATUS Status;
    SIZE_T Size = PAGE_ROUND_UP(SizeRequested + PAGE_SIZE);
    PVOID VirtualMemory = ((void*)0);
    PCHAR StartOfBuffer;

    Status = NtAllocateVirtualMemory(NtCurrentProcess(), &VirtualMemory, 0, &Size, MEM_RESERVE, PAGE_NOACCESS);

    if (!NT_SUCCESS(Status))
        return ((void*)0);

    Size -= PAGE_SIZE;
    if (Size)
    {
        Status = NtAllocateVirtualMemory(NtCurrentProcess(), &VirtualMemory, 0, &Size, MEM_COMMIT, PAGE_READWRITE);
        if (!NT_SUCCESS(Status))
        {
            Size = 0;
            Status = NtFreeVirtualMemory(NtCurrentProcess(), &VirtualMemory, &Size, MEM_RELEASE);
            ok(Status == STATUS_SUCCESS, "Status = %lx\n", Status);
            return ((void*)0);
        }
    }

    StartOfBuffer = VirtualMemory;
    StartOfBuffer += Size - SizeRequested;

    return StartOfBuffer;
}
