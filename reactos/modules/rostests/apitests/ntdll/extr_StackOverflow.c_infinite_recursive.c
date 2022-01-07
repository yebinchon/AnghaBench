
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int Type; int Protect; int State; int RegionSize; int AllocationProtect; int BaseAddress; int AllocationBase; } ;
typedef scalar_t__ PVOID ;
typedef int NTSTATUS ;
typedef int MemoryBasicInfo ;
typedef TYPE_1__ MEMORY_BASIC_INFORMATION ;


 char* LastStackAllocation ;
 scalar_t__ MEM_COMMIT ;
 scalar_t__ MEM_PRIVATE ;
 int MemoryBasicInformation ;
 int NtCurrentProcess () ;
 int NtQueryVirtualMemory (int ,char*,int ,TYPE_1__*,int,int *) ;
 scalar_t__ PAGE_READWRITE ;
 scalar_t__ PAGE_ROUND_DOWN (char*) ;
 int PAGE_SIZE ;
 int STATUS_SUCCESS ;
 scalar_t__ StackAllocationBase ;
 scalar_t__ StackSize ;
 int iteration ;
 int ok_long (int ,scalar_t__) ;
 int ok_ntstatus (int ,int ) ;
 int ok_ptr (int ,scalar_t__) ;
 int sprintf (char*,char*,int ) ;

__attribute__((used)) static
void
infinite_recursive(void)
{
    MEMORY_BASIC_INFORMATION MemoryBasicInfo;
    NTSTATUS Status;
    char Buffer[0x500];

    sprintf(Buffer, "Iteration %d.\n", iteration++);

    Status = NtQueryVirtualMemory(
        NtCurrentProcess(),
        &Buffer[0],
        MemoryBasicInformation,
        &MemoryBasicInfo,
        sizeof(MemoryBasicInfo),
        ((void*)0));
    ok_ntstatus(Status, STATUS_SUCCESS);

    ok_ptr(MemoryBasicInfo.AllocationBase, StackAllocationBase);

    ok_ptr(MemoryBasicInfo.BaseAddress, (PVOID)PAGE_ROUND_DOWN(&Buffer[0]));

    ok_long(MemoryBasicInfo.AllocationProtect, PAGE_READWRITE);





    ok_long(MemoryBasicInfo.State, MEM_COMMIT);

    ok_long(MemoryBasicInfo.Protect, PAGE_READWRITE);

    ok_long(MemoryBasicInfo.Type, MEM_PRIVATE);

    LastStackAllocation = &Buffer[-0x500];

    infinite_recursive();
}
