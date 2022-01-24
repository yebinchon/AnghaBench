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
typedef  int /*<<< orphan*/  IUnknown ;
typedef  int /*<<< orphan*/  ITask ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 scalar_t__ CLASS_E_CLASSNOTAVAILABLE ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_CTask ; 
 int /*<<< orphan*/  CLSID_CTaskScheduler ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ E_NOINTERFACE ; 
 int /*<<< orphan*/  IID_ITask ; 
 int /*<<< orphan*/  IID_ITaskScheduler ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC5 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int /*<<< orphan*/  test_task_scheduler ; 

__attribute__((used)) static void FUNC7(void)
{
    HRESULT hres;
    ITask *task;
    const WCHAR task_name[] = {'T', 'e', 's', 't', 'i', 'n', 'g', 0};
    GUID GUID_BAD;

    /* Initialize a GUID that will not be a recognized CLSID or a IID */
    FUNC0(&GUID_BAD);

    /* Create TaskScheduler */
    hres = FUNC1(&CLSID_CTaskScheduler, NULL, CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **) &test_task_scheduler);
    FUNC5(hres == S_OK, "CTaskScheduler CoCreateInstance failed: %08x\n", hres);
    if (hres != S_OK)
    {
        FUNC6("Failed to create task scheduler.  Skipping tests.\n");
        return;
    }

    /* Test basic task creation */
    hres = FUNC2(test_task_scheduler, task_name,
            &CLSID_CTask, &IID_ITask, (IUnknown**)&task);
    FUNC5(hres == S_OK, "NewNetworkItem failed: %08x\n", hres);
    if (hres == S_OK)
        FUNC4(task);

    /* Task creation attempt using invalid work item class ID */
    hres = FUNC2(test_task_scheduler, task_name,
            &GUID_BAD, &IID_ITask, (IUnknown**)&task);
    FUNC5(hres == CLASS_E_CLASSNOTAVAILABLE,
            "Expected CLASS_E_CLASSNOTAVAILABLE: %08x\n", hres);

    /* Task creation attempt using invalid interface ID */
    hres = FUNC2(test_task_scheduler, task_name,
            &CLSID_CTask, &GUID_BAD, (IUnknown**)&task);
    FUNC5(hres == E_NOINTERFACE, "Expected E_NOINTERFACE: %08x\n", hres);

    /* Task creation attempt using invalid work item class and interface ID */
    hres = FUNC2(test_task_scheduler, task_name,
            &GUID_BAD, &GUID_BAD, (IUnknown**)&task);
    FUNC5(hres == CLASS_E_CLASSNOTAVAILABLE,
            "Expected CLASS_E_CLASSNOTAVAILABLE: %08x\n", hres);

    FUNC3(test_task_scheduler);
    return;
}