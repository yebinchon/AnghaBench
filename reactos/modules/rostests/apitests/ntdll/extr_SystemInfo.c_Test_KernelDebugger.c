
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_6__ {int KernelDebuggerEnabled; int KernelDebuggerNotPresent; } ;
typedef int SYSTEM_KERNEL_DEBUGGER_INFORMATION ;
typedef TYPE_1__* PVOID ;
typedef TYPE_1__* PUCHAR ;
typedef TYPE_1__* PSYSTEM_KERNEL_DEBUGGER_INFORMATION ;
typedef int NTSTATUS ;
typedef int Buffer ;


 int FALSE ;
 int NtQuerySystemInformation (int ,TYPE_1__*,int,int*) ;
 int NtSetSystemInformation (int ,TYPE_1__*,int) ;
 int RtlFillMemory (int*,int,int) ;
 int STATUS_INFO_LENGTH_MISMATCH ;
 int STATUS_INVALID_INFO_CLASS ;
 int STATUS_SUCCESS ;
 int SystemKernelDebuggerInformation ;
 int TRUE ;
 scalar_t__ ntv6 (int) ;
 int ok (int,char*,int) ;

__attribute__((used)) static
void
Test_KernelDebugger(void)
{
    NTSTATUS Status;
    ULONG ReturnLength;
    ULONG Buffer[2];
    PSYSTEM_KERNEL_DEBUGGER_INFORMATION DebuggerInfo = (PVOID)Buffer;


    ReturnLength = 0x55555555;
    Status = NtQuerySystemInformation(SystemKernelDebuggerInformation, ((void*)0), 0, &ReturnLength);
    ok(Status == STATUS_INFO_LENGTH_MISMATCH, "NtQuerySystemInformation returned %lx\n", Status);
    ok(ReturnLength == 0 ||
       ntv6(ReturnLength == sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION)), "ReturnLength = %lu\n", ReturnLength);

    ReturnLength = 0x55555555;
    RtlFillMemory(Buffer, sizeof(Buffer), 0x55);
    Status = NtQuerySystemInformation(SystemKernelDebuggerInformation, DebuggerInfo, sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION) - 1, &ReturnLength);
    ok(Status == STATUS_INFO_LENGTH_MISMATCH, "NtQuerySystemInformation returned %lx\n", Status);
    ok(ReturnLength == 0 ||
       ntv6(ReturnLength == sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION)), "ReturnLength = %lu\n", ReturnLength);
    ok(Buffer[0] == 0x55555555, "Buffer[0] = %lx\n", Buffer[0]);
    ok(Buffer[1] == 0x55555555, "Buffer[1] = %lx\n", Buffer[1]);

    ReturnLength = 0x55555555;
    RtlFillMemory(Buffer, sizeof(Buffer), 0x55);
    Status = NtQuerySystemInformation(SystemKernelDebuggerInformation, (PUCHAR)DebuggerInfo + 1, sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION), &ReturnLength);
    ok(Status == STATUS_SUCCESS, "NtQuerySystemInformation returned %lx\n", Status);
    ok(ReturnLength == sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION), "ReturnLength = %lu\n", ReturnLength);
    ok((Buffer[0] & 0x55fefe55) == 0x55000055, "Buffer[0] = %lx\n", Buffer[0]);
    ok(Buffer[1] == 0x55555555, "Buffer[1] = %lx\n", Buffer[1]);

    ReturnLength = 0x55555555;
    RtlFillMemory(Buffer, sizeof(Buffer), 0x55);
    Status = NtQuerySystemInformation(SystemKernelDebuggerInformation, DebuggerInfo, sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION), &ReturnLength);
    ok(Status == STATUS_SUCCESS, "NtQuerySystemInformation returned %lx\n", Status);
    ok(ReturnLength == sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION), "ReturnLength = %lu\n", ReturnLength);
    ok(DebuggerInfo->KernelDebuggerEnabled == FALSE ||
       DebuggerInfo->KernelDebuggerEnabled == TRUE, "KernelDebuggerEnabled = %u\n", DebuggerInfo->KernelDebuggerEnabled);
    ok(DebuggerInfo->KernelDebuggerNotPresent == FALSE ||
       DebuggerInfo->KernelDebuggerNotPresent == TRUE, "KernelDebuggerNotPresent = %u\n", DebuggerInfo->KernelDebuggerNotPresent);


    DebuggerInfo->KernelDebuggerEnabled = FALSE;
    DebuggerInfo->KernelDebuggerNotPresent = TRUE;
    Status = NtSetSystemInformation(SystemKernelDebuggerInformation, DebuggerInfo, sizeof(SYSTEM_KERNEL_DEBUGGER_INFORMATION));
    ok(Status == STATUS_INVALID_INFO_CLASS, "NtSetSystemInformation returned %lx\n", Status);
}
