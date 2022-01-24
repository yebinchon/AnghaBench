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
typedef  scalar_t__ SIZE_T ;
typedef  scalar_t__ PVOID ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC6 (int,char*,scalar_t__) ; 

__attribute__((used)) static
VOID
FUNC7(
    PVOID Pointer,
    SIZE_T SizeRequested)
{
    NTSTATUS Status;
    SIZE_T Size = FUNC5(SizeRequested);
    PVOID VirtualMemory = (PVOID)FUNC4((SIZE_T)Pointer);

    if (Size)
    {
        Status = FUNC1(FUNC2(), &VirtualMemory, 0, &Size, MEM_COMMIT, PAGE_READWRITE);
        if (!FUNC0(Status))
        {
            Size = 0;
            Status = FUNC3(FUNC2(), &VirtualMemory, &Size, MEM_RELEASE);
            FUNC6(Status == STATUS_SUCCESS, "Status = %lx\n", Status);
        }
    }
}