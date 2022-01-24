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
typedef  int /*<<< orphan*/  ULONGLONG ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  SYSTEM_PERFORMANCE_INFORMATION ;
typedef  scalar_t__ NTSTATUS ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 scalar_t__ STATUS_SUCCESS ; 
 int /*<<< orphan*/  SystemPerformanceInformation ; 
 scalar_t__ is_wow64 ; 
 int /*<<< orphan*/  FUNC0 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static void FUNC2(void)
{
    NTSTATUS status;
    ULONG ReturnLength;
    ULONGLONG buffer[sizeof(SYSTEM_PERFORMANCE_INFORMATION)/sizeof(ULONGLONG) + 5];
    DWORD size = sizeof(SYSTEM_PERFORMANCE_INFORMATION);

    status = FUNC1(SystemPerformanceInformation, buffer, 0, &ReturnLength);
    FUNC0( status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    status = FUNC1(SystemPerformanceInformation, buffer, size, &ReturnLength);
    if (status == STATUS_INFO_LENGTH_MISMATCH && is_wow64)
    {
        /* size is larger on wow64 under w2k8/win7 */
        size += 16;
        status = FUNC1(SystemPerformanceInformation, buffer, size, &ReturnLength);
    }
    FUNC0( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC0( ReturnLength == size, "Inconsistent length %d\n", ReturnLength);

    status = FUNC1(SystemPerformanceInformation, buffer, size + 2, &ReturnLength);
    FUNC0( status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC0( ReturnLength == size || ReturnLength == size + 2,
        "Inconsistent length %d\n", ReturnLength);

    /* Not return values yet, as struct members are unknown */
}