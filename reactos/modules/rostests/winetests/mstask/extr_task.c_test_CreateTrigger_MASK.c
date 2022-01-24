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
typedef  int /*<<< orphan*/  WORD ;
typedef  int /*<<< orphan*/  ITaskTrigger ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  test_task ; 

__attribute__((used)) static void FUNC6(void)
{
    BOOL setup;
    HRESULT hres;
    WORD trigger_index;
    ITaskTrigger *test_trigger;

    setup = FUNC4();
    FUNC3(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        FUNC5("Failed to create task.  Skipping tests.\n");
        return;
    }

    hres = FUNC1(test_task, &trigger_index, &test_trigger);
    FUNC3(hres == S_OK, "Failed to create trigger: 0x%08x\n", hres);
    if (hres != S_OK)
    {
        FUNC2();
        return;
    }

    FUNC0(test_trigger);
    FUNC2();
    return;
}