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
struct TYPE_3__ {int /*<<< orphan*/ * hwndTarget; } ;
typedef  int /*<<< orphan*/ * HWND ;
typedef  scalar_t__ HANDLE ;
typedef  TYPE_1__ GHOST_DATA ;
typedef  int /*<<< orphan*/  DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PROCESS_TERMINATE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int) ; 

__attribute__((used)) static void
FUNC5(GHOST_DATA *pData)
{
    HWND hwndTarget = pData->hwndTarget;
    DWORD pid;
    HANDLE hProcess;

    pData->hwndTarget = NULL;
    FUNC2(hwndTarget, &pid);

    hProcess = FUNC3(PROCESS_TERMINATE, FALSE, pid);
    if (hProcess)
    {
        FUNC4(hProcess, -1);
        FUNC0(hProcess);
    }

    FUNC1(hwndTarget);
}