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
typedef  char const* LPWSTR ;
typedef  int HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  ERROR_FILE_NOT_FOUND ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const**) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int SCHED_E_CANNOT_OPEN_TASK ; 
 int SCHED_E_NO_SECURITY_SERVICES ; 
 int SCHED_E_SERVICE_NOT_RUNNING ; 
 int S_OK ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 char const* empty ; 
 int /*<<< orphan*/  FUNC6 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  test_task ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static void FUNC12(void)
{
    BOOL setup;
    HRESULT hres;
    LPWSTR account_name;
    const WCHAR dummy_account_name[] = {'N', 'o', 'S', 'u', 'c', 'h',
            'A', 'c', 'c', 'o', 'u', 'n', 't', 0};
    const WCHAR dummy_account_name_b[] = {'N', 'o', 'S', 'u', 'c', 'h',
            'A', 'c', 'c', 'o', 'u', 'n', 't', 'B', 0};

    setup = FUNC8();
    FUNC7(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        FUNC9("Failed to create task.  Skipping tests.\n");
        return;
    }

    /* Get account information before it is set */
    hres = FUNC2(test_task, &account_name);
    /* WinXP returns HRESULT_FROM_WIN32(ERROR_FILE_NOT_FOUND): 0x80070002 but
     * Win2K returns SCHED_E_CANNOT_OPEN_TASK: 0x8004130d
     * Win9x doesn't support security services */
    if (hres == SCHED_E_NO_SECURITY_SERVICES || hres == SCHED_E_SERVICE_NOT_RUNNING)
    {
        FUNC10("Security services are not supported\n");
        FUNC5();
        return;
    }
    FUNC7(hres == FUNC1(ERROR_FILE_NOT_FOUND) ||
            hres == SCHED_E_CANNOT_OPEN_TASK,
            "Unset account name generated: 0x%08x\n", hres);

    /* Attempt to set to a dummy account without a password */
    /* This test passes on WinXP but fails on Win2K */
    hres = FUNC3(test_task, dummy_account_name, NULL);
    FUNC7(hres == S_OK,
            "Failed setting dummy account with no password: %08x\n", hres);
    hres = FUNC2(test_task, &account_name);
    FUNC7(hres == S_OK ||
       FUNC4(hres == FUNC1(ERROR_FILE_NOT_FOUND) ||
              hres == SCHED_E_CANNOT_OPEN_TASK ||
              hres == 0x200),  /* win2k */
       "GetAccountInformation failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC7(!FUNC6(account_name, dummy_account_name),
                "Got %s, expected %s\n", FUNC11(account_name),
                FUNC11(dummy_account_name));
        FUNC0(account_name);
    }

    /* Attempt to set to a dummy account with a (invalid) password */
    /* This test passes on WinXP but fails on Win2K */
    hres = FUNC3(test_task, dummy_account_name_b,
            dummy_account_name_b);
    FUNC7(hres == S_OK,
            "Failed setting dummy account with password: %08x\n", hres);
    hres = FUNC2(test_task, &account_name);
    FUNC7(hres == S_OK ||
       FUNC4(hres == FUNC1(ERROR_FILE_NOT_FOUND) ||
              hres == SCHED_E_CANNOT_OPEN_TASK ||
              hres == 0x200),  /* win2k */
       "GetAccountInformation failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC7(!FUNC6(account_name, dummy_account_name_b),
                "Got %s, expected %s\n", FUNC11(account_name),
                FUNC11(dummy_account_name_b));
        FUNC0(account_name);
    }

    /* Attempt to set to the local system account */
    hres = FUNC3(test_task, empty, NULL);
    FUNC7(hres == S_OK, "Failed setting system account: %08x\n", hres);
    hres = FUNC2(test_task, &account_name);
    FUNC7(hres == S_OK ||
       FUNC4(hres == FUNC1(ERROR_FILE_NOT_FOUND) ||
              hres == SCHED_E_CANNOT_OPEN_TASK ||
              hres == 0x200),  /* win2k */
       "GetAccountInformation failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC7(!FUNC6(account_name, empty),
                "Got %s, expected empty string\n", FUNC11(account_name));
        FUNC0(account_name);
    }

    FUNC5();
    return;
}