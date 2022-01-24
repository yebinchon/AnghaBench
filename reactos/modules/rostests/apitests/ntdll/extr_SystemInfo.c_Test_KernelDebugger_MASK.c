#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int ULONG ;
struct TYPE_6__ {int KernelDebuggerEnabled; int KernelDebuggerNotPresent; } ;
typedef  int /*<<< orphan*/  SYSTEM_KERNEL_DEBUGGER_INFORMATION ;
typedef  TYPE_1__* PVOID ;
typedef  TYPE_1__* PUCHAR ;
typedef  TYPE_1__* PSYSTEM_KERNEL_DEBUGGER_INFORMATION ;
typedef  int NTSTATUS ;
typedef  int /*<<< orphan*/  Buffer ;

/* Variables and functions */
 int FALSE ; 
 int FUNC0 (int /*<<< orphan*/ ,TYPE_1__*,int,int*) ; 
 int FUNC1 (int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC2 (int*,int,int) ; 
 int STATUS_INFO_LENGTH_MISMATCH ; 
 int STATUS_INVALID_INFO_CLASS ; 
 int STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemKernelDebuggerInformation ; 
 int TRUE ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,int) ; 

__attribute__((used)) static
void
FUNC5(void)
{
    NTSTATUS Status;
    ULONG ReturnLength;
    ULONG Buffer[2];
    PSYSTEM_KERNEL_DEBUGGER_INFORMATION DebuggerInfo = (PVOID)Buffer;

    /* Query */
    ReturnLength = 0x55555555;
    Status = FUNC0(SystemKernelDebuggerInformation, NULL, 0, &ReturnLength);
    FUNC4(Status == STATUS_INFO_LENGTH_MISMATCH, "NtQuerySystemInformation returned %lx\n", Status);
    FUNC4(ReturnLength == 0 ||
       FUNC3(ReturnLength == sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION)), "ReturnLength = %lu\n", ReturnLength);

    ReturnLength = 0x55555555;
    FUNC2(Buffer, sizeof(Buffer), 0x55);
    Status = FUNC0(SystemKernelDebuggerInformation, DebuggerInfo, sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION) - 1, &ReturnLength);
    FUNC4(Status == STATUS_INFO_LENGTH_MISMATCH, "NtQuerySystemInformation returned %lx\n", Status);
    FUNC4(ReturnLength == 0 ||
       FUNC3(ReturnLength == sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION)), "ReturnLength = %lu\n", ReturnLength);
    FUNC4(Buffer[0] == 0x55555555, "Buffer[0] = %lx\n", Buffer[0]);
    FUNC4(Buffer[1] == 0x55555555, "Buffer[1] = %lx\n", Buffer[1]);

    ReturnLength = 0x55555555;
    FUNC2(Buffer, sizeof(Buffer), 0x55);
    Status = FUNC0(SystemKernelDebuggerInformation, (PUCHAR)DebuggerInfo + 1, sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION), &ReturnLength);
    FUNC4(Status == STATUS_SUCCESS, "NtQuerySystemInformation returned %lx\n", Status);
    FUNC4(ReturnLength == sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION), "ReturnLength = %lu\n", ReturnLength);
    FUNC4((Buffer[0] & 0x55fefe55) == 0x55000055, "Buffer[0] = %lx\n", Buffer[0]);
    FUNC4(Buffer[1] == 0x55555555, "Buffer[1] = %lx\n", Buffer[1]);

    ReturnLength = 0x55555555;
    FUNC2(Buffer, sizeof(Buffer), 0x55);
    Status = FUNC0(SystemKernelDebuggerInformation, DebuggerInfo, sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION), &ReturnLength);
    FUNC4(Status == STATUS_SUCCESS, "NtQuerySystemInformation returned %lx\n", Status);
    FUNC4(ReturnLength == sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION), "ReturnLength = %lu\n", ReturnLength);
    FUNC4(DebuggerInfo->KernelDebuggerEnabled == FALSE ||
       DebuggerInfo->KernelDebuggerEnabled == TRUE, "KernelDebuggerEnabled = %u\n", DebuggerInfo->KernelDebuggerEnabled);
    FUNC4(DebuggerInfo->KernelDebuggerNotPresent == FALSE ||
       DebuggerInfo->KernelDebuggerNotPresent == TRUE, "KernelDebuggerNotPresent = %u\n", DebuggerInfo->KernelDebuggerNotPresent);

    /* Set - not supported */
    DebuggerInfo->KernelDebuggerEnabled = FALSE;
    DebuggerInfo->KernelDebuggerNotPresent = TRUE;
    Status = FUNC1(SystemKernelDebuggerInformation, DebuggerInfo, sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION));
    FUNC4(Status == STATUS_INVALID_INFO_CLASS, "NtSetSystemInformation returned %lx\n", Status);
}