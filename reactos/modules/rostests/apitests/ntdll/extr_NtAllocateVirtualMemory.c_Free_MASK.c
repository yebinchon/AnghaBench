#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  size_t ULONG ;
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ PUCHAR ;
typedef  scalar_t__* PSIZE_T ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/ ** Allocations ; 
 size_t CurrentAllocation ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ PAGE_SIZE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,int) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC4 () ; 

__attribute__((used)) static
VOID
FUNC5(
    PVOID UserBuffer)
{
    NTSTATUS Status;
    PVOID AllocationStart;
    SIZE_T Zero = 0;
    SIZE_T AllocationSize;
    SIZE_T DataSize;
    ULONG i;

    AllocationSize = ((PSIZE_T)UserBuffer)[-2];
    DataSize = ((PSIZE_T)UserBuffer)[-1];
    FUNC0(DataSize != 0);

    AllocationStart = (PUCHAR)UserBuffer + DataSize + PAGE_SIZE - AllocationSize;
    FUNC0((SIZE_T)AllocationStart % PAGE_SIZE == 0);

    FUNC3(UserBuffer, DataSize, 0xbe);
    ((PSIZE_T)UserBuffer)[-1] = 0;
    ((PSIZE_T)UserBuffer)[-2] = 0xFAFBFCFD;

    for (i = 0; i < CurrentAllocation; ++i)
        if (Allocations[i] == UserBuffer)
        {
            Allocations[i] = NULL;
            break;
        }
    FUNC4();

    Status = FUNC2(FUNC1(), &AllocationStart, &Zero, MEM_RELEASE);
    FUNC0(Status == STATUS_SUCCESS);
}