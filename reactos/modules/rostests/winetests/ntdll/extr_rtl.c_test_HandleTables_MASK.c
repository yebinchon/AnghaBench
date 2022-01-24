#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_5__ {int /*<<< orphan*/  RtlHandle; } ;
typedef  int /*<<< orphan*/  RTL_HANDLE_TABLE ;
typedef  int /*<<< orphan*/  RTL_HANDLE ;
typedef  TYPE_1__* NTSTATUS ;
typedef  TYPE_1__ MY_HANDLE ;
typedef  int BOOLEAN ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_1__* STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int,int,int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static void FUNC8(void)
{
    BOOLEAN result;
    NTSTATUS status;
    ULONG Index;
    MY_HANDLE * MyHandle;
    RTL_HANDLE_TABLE HandleTable;

    if (!&pRtlInitializeHandleTable)
    {
        FUNC7("RtlInitializeHandleTable is not available\n");
        return;
    }

    FUNC5(0x3FFF, sizeof(MY_HANDLE), &HandleTable);
    MyHandle = (MY_HANDLE *)FUNC2(&HandleTable, &Index);
    FUNC1(MyHandle != NULL, "RtlAllocateHandle failed\n");
    FUNC0(&MyHandle->RtlHandle);
    MyHandle = NULL;
    result = FUNC6(&HandleTable, Index, (RTL_HANDLE **)&MyHandle);
    FUNC1(result, "Handle %p wasn't valid\n", MyHandle);
    result = FUNC4(&HandleTable, &MyHandle->RtlHandle);
    FUNC1(result, "Couldn't free handle %p\n", MyHandle);
    status = FUNC3(&HandleTable);
    FUNC1(status == STATUS_SUCCESS, "RtlDestroyHandleTable failed with error 0x%08x\n", status);
}