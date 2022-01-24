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
typedef  int /*<<< orphan*/  bases ;
typedef  size_t ULONG ;
typedef  int SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t MEM_COMMIT ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 size_t FUNC3 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int) ; 
 int /*<<< orphan*/  STATUS_ACCESS_VIOLATION ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  TestString ; 
 int /*<<< orphan*/  TestStringSize ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static
NTSTATUS
FUNC8(ULONG AllocationType)
{
    NTSTATUS Status = STATUS_SUCCESS;
    NTSTATUS ReturnStatus = STATUS_SUCCESS;
    static PVOID bases[1024]; //assume we are going to allocate only 5 gigs. static here means the arrays is not allocated on the stack but in the BSS segment of the driver
    ULONG Index = 0;
    PVOID Base = NULL;
    SIZE_T RegionSize = 5 * 1024 * 1024; // 5 megabytes;

    FUNC4(bases, sizeof(bases));

    for (Index = 0; Index < FUNC3(bases) && FUNC1(Status); Index++)
    {
        Status = FUNC5(FUNC2(), &Base, 0, &RegionSize, AllocationType, PAGE_READWRITE);

        bases[Index] = Base;
        if ((Index % 10) == 0)
        {
            if (AllocationType == MEM_COMMIT && FUNC1(Status))
            {
                FUNC0(Base, TestString, TestStringSize, STATUS_SUCCESS);
            }
            else
            {
                FUNC0(Base, TestString, TestStringSize, STATUS_ACCESS_VIOLATION);
            }
        }

        Base = NULL;
    }

    FUNC7("Finished reserving. Error code %x. Chunks allocated: %d\n", Status, Index );

    ReturnStatus = Status;

    //free the allocated memory so that we can continue with the tests
    Status = STATUS_SUCCESS;
    Index = 0;
    while (FUNC1(Status) && Index < FUNC3(bases))
    {
        RegionSize = 0;
        Status = FUNC6(FUNC2(), &bases[Index], &RegionSize, MEM_RELEASE);
        bases[Index++] = NULL;
    }

    return ReturnStatus;
}