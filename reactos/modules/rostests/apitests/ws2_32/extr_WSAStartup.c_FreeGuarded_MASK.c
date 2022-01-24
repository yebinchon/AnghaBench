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
typedef  int /*<<< orphan*/  SIZE_T ;
typedef  scalar_t__ PVOID ;
typedef  scalar_t__ NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 

__attribute__((used)) static
VOID
FUNC4(
    PVOID Pointer)
{
    NTSTATUS Status;
    PVOID VirtualMemory = (PVOID)FUNC2((SIZE_T)Pointer);
    SIZE_T Size = 0;

    Status = FUNC1(FUNC0(), &VirtualMemory, &Size, MEM_RELEASE);
    FUNC3(Status == STATUS_SUCCESS, "Status = %lx\n", Status);
}