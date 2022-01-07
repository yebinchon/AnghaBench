
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int SIZE_T ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ NTSTATUS ;


 int MEM_RELEASE ;
 int NtCurrentProcess () ;
 scalar_t__ NtFreeVirtualMemory (int ,scalar_t__*,int *,int ) ;
 int PAGE_ROUND_DOWN (int ) ;
 scalar_t__ STATUS_SUCCESS ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static
VOID
FreeGuarded(
    PVOID Pointer)
{
    NTSTATUS Status;
    PVOID VirtualMemory = (PVOID)PAGE_ROUND_DOWN((SIZE_T)Pointer);
    SIZE_T Size = 0;

    Status = NtFreeVirtualMemory(NtCurrentProcess(), &VirtualMemory, &Size, MEM_RELEASE);
    ok(Status == STATUS_SUCCESS, "Status = %lx\n", Status);
}
