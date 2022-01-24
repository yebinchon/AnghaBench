#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG_PTR ;
struct TYPE_3__ {int /*<<< orphan*/  Type; int /*<<< orphan*/  Protect; int /*<<< orphan*/  State; int /*<<< orphan*/  RegionSize; int /*<<< orphan*/  AllocationProtect; int /*<<< orphan*/  BaseAddress; int /*<<< orphan*/  AllocationBase; } ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  MemoryBasicInfo ;
typedef  TYPE_1__ MEMORY_BASIC_INFORMATION ;

/* Variables and functions */
 char* LastStackAllocation ; 
 scalar_t__ MEM_COMMIT ; 
 scalar_t__ MEM_PRIVATE ; 
 int /*<<< orphan*/  MemoryBasicInformation ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ PAGE_READWRITE ; 
 scalar_t__ FUNC2 (char*) ; 
 int PAGE_SIZE ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 scalar_t__ StackAllocationBase ; 
 scalar_t__ StackSize ; 
 int /*<<< orphan*/  iteration ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static
void
FUNC7(void)
{
    MEMORY_BASIC_INFORMATION MemoryBasicInfo;
    NTSTATUS Status;
    char Buffer[0x500];

    FUNC6(Buffer, "Iteration %d.\n", iteration++);

    Status = FUNC1(
        FUNC0(),
        &Buffer[0],
        MemoryBasicInformation,
        &MemoryBasicInfo,
        sizeof(MemoryBasicInfo),
        NULL);
    FUNC4(Status, STATUS_SUCCESS);
    /* This never changes */
    FUNC5(MemoryBasicInfo.AllocationBase, StackAllocationBase);
    /* Stack is committed one page at a time */
    FUNC5(MemoryBasicInfo.BaseAddress, (PVOID)FUNC2(&Buffer[0]));
    /* This is the protection of the memory when it was reserved. */
    FUNC3(MemoryBasicInfo.AllocationProtect, PAGE_READWRITE);
    /* Windows commits the whole used stack at once, +2 pages. */
#if 0
    ok_long(MemoryBasicInfo.RegionSize, ((ULONG_PTR)StackAllocationBase + StackSize + 2* PAGE_SIZE) - PAGE_ROUND_DOWN(&Buffer[0]));
#endif
    /* This is the state of the queried address */
    FUNC3(MemoryBasicInfo.State, MEM_COMMIT);
    /* This is the protection of the queried address */
    FUNC3(MemoryBasicInfo.Protect, PAGE_READWRITE);
    /* Of course this is private memory. */
    FUNC3(MemoryBasicInfo.Type, MEM_PRIVATE);

    LastStackAllocation = &Buffer[-0x500];

    FUNC7();
}