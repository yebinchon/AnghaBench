#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_2__ {char* szClass; char* szTitle; int lParam; scalar_t__ style; void* cy; void* cx; void* y; void* x; int /*<<< orphan*/  hOwner; } ;
typedef  TYPE_1__ MDICREATESTRUCTA ;
typedef  int LPARAM ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 void* CW_USEDEFAULT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  GW_HWNDNEXT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  WM_MDICREATE ; 
 int /*<<< orphan*/  WM_MDIGETACTIVE ; 
 int /*<<< orphan*/  WM_MDINEXT ; 
 scalar_t__ mdi_lParam_test_message ; 
 int /*<<< orphan*/  FUNC4 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char*,scalar_t__,...) ; 

__attribute__((used)) static void FUNC6(HWND mdi_client)
{
    HWND child_1, child_2, child_3, child_4;
    HWND stack[4];
    MDICREATESTRUCTA cs;

    cs.szClass = "MDI_child_Class_1";
    cs.szTitle = "MDI child";
    cs.hOwner  = FUNC1(0);
    cs.x       = CW_USEDEFAULT;
    cs.y       = CW_USEDEFAULT;
    cs.cx      = CW_USEDEFAULT;
    cs.cy      = CW_USEDEFAULT;
    cs.style   = 0;
    cs.lParam  = (LPARAM)mdi_lParam_test_message;

    child_1 = (HWND)FUNC3(mdi_client, WM_MDICREATE, 0, (LPARAM)&cs);
    FUNC4(child_1 != 0, "expected child_1 to be non NULL\n");
    child_2 = (HWND)FUNC3(mdi_client, WM_MDICREATE, 0, (LPARAM)&cs);
    FUNC4(child_2 != 0, "expected child_2 to be non NULL\n");
    child_3 = (HWND)FUNC3(mdi_client, WM_MDICREATE, 0, (LPARAM)&cs);
    FUNC4(child_3 != 0, "expected child_3 to be non NULL\n");
    child_4 = (HWND)FUNC3(mdi_client, WM_MDICREATE, 0, (LPARAM)&cs);
    FUNC4(child_4 != 0, "expected child_4 to be non NULL\n");

    stack[0] = (HWND)FUNC3(mdi_client, WM_MDIGETACTIVE, 0, 0);
    stack[1] = FUNC2(stack[0], GW_HWNDNEXT);
    stack[2] = FUNC2(stack[1], GW_HWNDNEXT);
    stack[3] = FUNC2(stack[2], GW_HWNDNEXT);
    FUNC5("Initial MDI child stack: %p->%p->%p->%p\n", stack[0], stack[1], stack[2], stack[3]);
    FUNC4(stack[0] == child_4 && stack[1] == child_3 &&
        stack[2] == child_2 && stack[3] == child_1,
        "Unexpected initial order, should be: %p->%p->%p->%p\n",
            child_4, child_3, child_2, child_1);

    FUNC5("Activate child next to %p\n", child_3);
    FUNC3(mdi_client, WM_MDINEXT, (WPARAM)child_3, 0);

    stack[0] = (HWND)FUNC3(mdi_client, WM_MDIGETACTIVE, 0, 0);
    stack[1] = FUNC2(stack[0], GW_HWNDNEXT);
    stack[2] = FUNC2(stack[1], GW_HWNDNEXT);
    stack[3] = FUNC2(stack[2], GW_HWNDNEXT);
    FUNC4(stack[0] == child_2 && stack[1] == child_4 &&
        stack[2] == child_1 && stack[3] == child_3,
        "Broken MDI child stack:\nexpected: %p->%p->%p->%p, but got: %p->%p->%p->%p\n",
            child_2, child_4, child_1, child_3, stack[0], stack[1], stack[2], stack[3]);

    FUNC5("Activate child previous to %p\n", child_1);
    FUNC3(mdi_client, WM_MDINEXT, (WPARAM)child_1, 1);

    stack[0] = (HWND)FUNC3(mdi_client, WM_MDIGETACTIVE, 0, 0);
    stack[1] = FUNC2(stack[0], GW_HWNDNEXT);
    stack[2] = FUNC2(stack[1], GW_HWNDNEXT);
    stack[3] = FUNC2(stack[2], GW_HWNDNEXT);
    FUNC4(stack[0] == child_4 && stack[1] == child_2 &&
        stack[2] == child_1 && stack[3] == child_3,
        "Broken MDI child stack:\nexpected: %p->%p->%p->%p, but got: %p->%p->%p->%p\n",
            child_4, child_2, child_1, child_3, stack[0], stack[1], stack[2], stack[3]);

    FUNC0(child_1);
    FUNC0(child_2);
    FUNC0(child_3);
    FUNC0(child_4);
}