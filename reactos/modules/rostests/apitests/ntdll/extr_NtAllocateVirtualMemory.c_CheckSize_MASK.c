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
typedef  int ULONG_PTR ;
typedef  scalar_t__ SIZE_T ;
typedef  scalar_t__ PVOID ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  MEM_RESERVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,scalar_t__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__*,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PAGE_NOACCESS ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 

VOID
FUNC5(ULONG_PTR Base, SIZE_T InSize, SIZE_T ExpectedSize)
{
    NTSTATUS Status;
    PVOID BaseAddress;
    SIZE_T Size;

    /* Reserve memory */
    BaseAddress = (PVOID)Base;
    Size = InSize;
    Status = FUNC1(FUNC2(),
                                     &BaseAddress,
                                     0,
                                     &Size,
                                     MEM_RESERVE,
                                     PAGE_NOACCESS);
    FUNC4(FUNC0(Status), "NtAllocateVirtualMemory failed!\n");
    FUNC4(BaseAddress == (PVOID)(Base & ~((ULONG_PTR)0xFFFF)), "Got back wrong base address: %p\n", BaseAddress);
    FUNC4(Size == ExpectedSize, "Alloc of 0x%Ix: got back wrong size: 0x%Ix, expected 0x%Ix\n", InSize, Size, ExpectedSize);
    Status = FUNC3(FUNC2(), &BaseAddress, &Size, MEM_RELEASE);
    FUNC4(FUNC0(Status), "NtFreeVirtualMemory failed!\n");
}