
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef scalar_t__ SIZE_T ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ NTSTATUS ;


 int MEM_COMMIT ;
 int MEM_RELEASE ;
 int NT_SUCCESS (scalar_t__) ;
 scalar_t__ NtAllocateVirtualMemory (int ,scalar_t__*,int ,scalar_t__*,int ,int ) ;
 int NtCurrentProcess () ;
 scalar_t__ NtFreeVirtualMemory (int ,scalar_t__*,scalar_t__*,int ) ;
 int PAGE_READWRITE ;
 int PAGE_ROUND_DOWN (scalar_t__) ;
 scalar_t__ PAGE_ROUND_UP (scalar_t__) ;
 scalar_t__ STATUS_SUCCESS ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static
VOID
MakeReadOnly(
    PVOID Pointer,
    SIZE_T SizeRequested)
{
    NTSTATUS Status;
    SIZE_T Size = PAGE_ROUND_UP(SizeRequested);
    PVOID VirtualMemory = (PVOID)PAGE_ROUND_DOWN((SIZE_T)Pointer);

    if (Size)
    {
        Status = NtAllocateVirtualMemory(NtCurrentProcess(), &VirtualMemory, 0, &Size, MEM_COMMIT, PAGE_READWRITE);
        if (!NT_SUCCESS(Status))
        {
            Size = 0;
            Status = NtFreeVirtualMemory(NtCurrentProcess(), &VirtualMemory, &Size, MEM_RELEASE);
            ok(Status == STATUS_SUCCESS, "Status = %lx\n", Status);
        }
    }
}
