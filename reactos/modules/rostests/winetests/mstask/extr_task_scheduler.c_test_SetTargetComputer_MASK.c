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
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_CTaskScheduler ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  ERROR_BAD_NETPATH ; 
 scalar_t__ E_ACCESSDENIED ; 
 int /*<<< orphan*/  FUNC4 (char*,int*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IID_ITaskScheduler ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,char**) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int MAX_COMPUTERNAME_LENGTH ; 
 scalar_t__ S_OK ; 
 char* does_not_existW ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,scalar_t__,...) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  test_task_scheduler ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 

__attribute__((used)) static void FUNC13(void)
{
    WCHAR buffer[MAX_COMPUTERNAME_LENGTH + 3];  /* extra space for two '\' and a zero */
    DWORD len = MAX_COMPUTERNAME_LENGTH + 1;    /* extra space for a zero */
    WCHAR *oldname = NULL;
    WCHAR *name = NULL;
    HRESULT hres;


    buffer[0] = '\\';
    buffer[1] = '\\';
    if (!FUNC4(buffer + 2, &len))
        return;

    /* Create TaskScheduler */
    hres = FUNC2(&CLSID_CTaskScheduler, NULL, CLSCTX_INPROC_SERVER,
            &IID_ITaskScheduler, (void **) &test_task_scheduler);
    FUNC10(hres == S_OK, "CTaskScheduler CoCreateInstance failed: %08x\n", hres);
    if (hres != S_OK)
    {
        FUNC11("Failed to create task scheduler.  Skipping tests.\n");
        return;
    }

    hres = FUNC6(test_task_scheduler, &oldname);
    FUNC10(hres == S_OK, "got 0x%x and %s (expected S_OK)\n", hres, FUNC12(oldname));

    /* NULL is an alias for the local computer */
    hres = FUNC8(test_task_scheduler, NULL);
    FUNC10(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);
    hres = FUNC6(test_task_scheduler, &name);
    FUNC10((hres == S_OK && !FUNC9(name, buffer)),
        "got 0x%x with %s (expected S_OK and %s)\n",
        hres, FUNC12(name), FUNC12(buffer));
    FUNC3(name);

    /* The name must be valid */
    hres = FUNC8(test_task_scheduler, does_not_existW);
    FUNC10(hres == FUNC5(ERROR_BAD_NETPATH), "got 0x%x (expected 0x80070035)\n", hres);
    /* the name of the target computer is unchanged */
    hres = FUNC6(test_task_scheduler, &name);
    FUNC10((hres == S_OK && !FUNC9(name, buffer)),
        "got 0x%x with %s (expected S_OK and %s)\n",
        hres, FUNC12(name), FUNC12(buffer));
    FUNC3(name);

    /* the two backslashes are optional */
    hres = FUNC8(test_task_scheduler, oldname + 2);
    if (hres == E_ACCESSDENIED)
    {
        FUNC11("SetTargetComputer failed with E_ACCESSDENIED (needs admin rights)\n");
        goto done;
    }
    FUNC10(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);

    /* the case is ignored */
    FUNC1(buffer);
    hres = FUNC8(test_task_scheduler, buffer);
    FUNC10(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);
    FUNC0(buffer);
    hres = FUNC8(test_task_scheduler, buffer);
    FUNC10(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);

    /* cleanup */
    hres = FUNC8(test_task_scheduler, oldname);
    FUNC10(hres == S_OK, "got 0x%x (expected S_OK)\n", hres);

done:
    FUNC3(oldname);
    FUNC7(test_task_scheduler);
    return;
}