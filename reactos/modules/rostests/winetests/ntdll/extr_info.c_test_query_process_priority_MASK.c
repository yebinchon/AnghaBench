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
typedef  int /*<<< orphan*/  priority ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_3__ {scalar_t__ PriorityClass; } ;
typedef  TYPE_1__ PROCESS_PRIORITY_CLASS ;
typedef  scalar_t__ NTSTATUS ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  BELOW_NORMAL_PRIORITY_CLASS ; 
 int /*<<< orphan*/ * FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ PROCESS_PRIOCLASS_BELOW_NORMAL ; 
 int /*<<< orphan*/  ProcessPriorityClass ; 
 scalar_t__ STATUS_ACCESS_VIOLATION ; 
 scalar_t__ STATUS_INFO_LENGTH_MISMATCH ; 
 scalar_t__ STATUS_INVALID_HANDLE ; 
 scalar_t__ STATUS_SUCCESS ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__**,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
    PROCESS_PRIORITY_CLASS priority[2];
    ULONG ReturnLength;
    DWORD orig_priority;
    NTSTATUS status;
    BOOL ret;

    status = FUNC6(NULL, ProcessPriorityClass, NULL, sizeof(priority[0]), NULL);
    FUNC5(status == STATUS_ACCESS_VIOLATION || FUNC4(status == STATUS_INVALID_HANDLE) /* w2k3 */,
       "Expected STATUS_ACCESS_VIOLATION, got %08x\n", status);

    status = FUNC6(NULL, ProcessPriorityClass, &priority, sizeof(priority[0]), NULL);
    FUNC5(status == STATUS_INVALID_HANDLE, "Expected STATUS_INVALID_HANDLE, got %08x\n", status);

    status = FUNC6(FUNC0(), ProcessPriorityClass, &priority, 1, &ReturnLength);
    FUNC5(status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    status = FUNC6(FUNC0(), ProcessPriorityClass, &priority, sizeof(priority), &ReturnLength);
    FUNC5(status == STATUS_INFO_LENGTH_MISMATCH, "Expected STATUS_INFO_LENGTH_MISMATCH, got %08x\n", status);

    orig_priority = FUNC2(FUNC0());
    ret = FUNC3(FUNC0(), BELOW_NORMAL_PRIORITY_CLASS);
    FUNC5(ret, "Failed to set priority class: %u\n", FUNC1());

    status = FUNC6(FUNC0(), ProcessPriorityClass, &priority, sizeof(priority[0]), &ReturnLength);
    FUNC5(status == STATUS_SUCCESS, "Expected STATUS_SUCCESS, got %08x\n", status);
    FUNC5(priority[0].PriorityClass == PROCESS_PRIOCLASS_BELOW_NORMAL,
       "Expected PROCESS_PRIOCLASS_BELOW_NORMAL, got %u\n", priority[0].PriorityClass);

    ret = FUNC3(FUNC0(), orig_priority);
    FUNC5(ret, "Failed to reset priority class: %u\n", FUNC1());
}