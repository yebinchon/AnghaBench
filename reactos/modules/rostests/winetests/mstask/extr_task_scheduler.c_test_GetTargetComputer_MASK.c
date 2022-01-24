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
typedef  char WCHAR ;
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_CTaskScheduler ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ E_INVALIDARG ; 
 int /*<<< orphan*/  IID_ITaskScheduler ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  test_task_scheduler ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 

__attribute__((used)) static void FUNC7(void)
{
    HRESULT hres;
    WCHAR *oldname;

    /* Create TaskScheduler */
    hres = FUNC0(&CLSID_CTaskScheduler, NULL, CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **) &test_task_scheduler);
    FUNC4(hres == S_OK, "CTaskScheduler CoCreateInstance failed: %08x\n", hres);
    if (hres != S_OK)
    {
        FUNC5("Failed to create task scheduler.\n");
        return;
    }

    if (0)
    {
        /* This crashes on w2k */
        hres = FUNC2(test_task_scheduler, NULL);
        FUNC4(hres == E_INVALIDARG, "got 0x%x (expected E_INVALIDARG)\n", hres);
    }

    hres = FUNC2(test_task_scheduler, &oldname);
    FUNC4((hres == S_OK) && oldname && oldname[0] == '\\' && oldname[1] == '\\' && oldname[2],
        "got 0x%x and %s (expected S_OK and an unc name)\n", hres, FUNC6(oldname));

    FUNC1(oldname);

    FUNC3(test_task_scheduler);
    return;
}