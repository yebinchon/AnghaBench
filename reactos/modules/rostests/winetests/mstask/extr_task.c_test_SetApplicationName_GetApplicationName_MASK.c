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
typedef  char const* LPCWSTR ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const**) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char const* empty ; 
 scalar_t__ FUNC4 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 char* FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  test_task ; 
 scalar_t__ FUNC9 (char const*) ; 

__attribute__((used)) static void FUNC10(void)
{
    BOOL setup;
    HRESULT hres;
    LPWSTR stored_name;
    LPCWSTR full_name;
    const WCHAR non_application_name[] = {'N','o','S','u','c','h',
            'A','p','p','l','i','c','a','t','i','o','n', 0};
    const WCHAR notepad_exe[] = {
            'n','o','t','e','p','a','d','.','e','x','e', 0};
    const WCHAR notepad[] = {'n','o','t','e','p','a','d', 0};

    setup = FUNC7();
    FUNC5(setup, "Failed to setup test_task\n");
    if (!setup)
    {
        FUNC8("Failed to create task.  Skipping tests.\n");
        return;
    }

    /* Attempt getting before setting application name */
    hres = FUNC1(test_task, &stored_name);
    FUNC5(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(stored_name, empty),
                "Got %s, expected empty string\n", FUNC9(stored_name));
        FUNC0(stored_name);
    }

    /* Set application name to a nonexistent application and then get
     * the application name that is actually stored */
    hres = FUNC2(test_task, non_application_name);
    FUNC5(hres == S_OK, "Failed setting name %s: %08x\n",
            FUNC9(non_application_name), hres);
    hres = FUNC1(test_task, &stored_name);
    FUNC5(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        full_name = FUNC6(non_application_name);
        FUNC5(!FUNC4(stored_name, full_name), "Got %s, expected %s\n",
                FUNC9(stored_name), FUNC9(full_name));
        FUNC0(stored_name);
    }

    /* Set a valid application name with program type extension and then
     * get the stored name */
    hres = FUNC2(test_task, notepad_exe);
    FUNC5(hres == S_OK, "Failed setting name %s: %08x\n",
            FUNC9(notepad_exe), hres);
    hres = FUNC1(test_task, &stored_name);
    FUNC5(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        full_name = FUNC6(notepad_exe);
        FUNC5(!FUNC4(stored_name, full_name), "Got %s, expected %s\n",
                FUNC9(stored_name), FUNC9(full_name));
        FUNC0(stored_name);
    }

    /* Set a valid application name without program type extension and
     * then get the stored name */
    hres = FUNC2(test_task, notepad);
    FUNC5(hres == S_OK, "Failed setting name %s: %08x\n", FUNC9(notepad), hres);
    hres = FUNC1(test_task, &stored_name);
    FUNC5(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        full_name = FUNC6(notepad_exe);  /* XP SP1 appends .exe */
        if (FUNC4(stored_name, full_name) != 0)
        {
            full_name = FUNC6(notepad);
            FUNC5(!FUNC4(stored_name, full_name), "Got %s, expected %s\n",
               FUNC9(stored_name), FUNC9(full_name));
        }
        FUNC0(stored_name);
    }

    /* After having a valid application name set, set application the name
     * to a nonexistent application and then get the name that is
     * actually stored */
    hres = FUNC2(test_task, non_application_name);
    FUNC5(hres == S_OK, "Failed setting name %s: %08x\n",
            FUNC9(non_application_name), hres);
    hres = FUNC1(test_task, &stored_name);
    FUNC5(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        full_name = FUNC6(non_application_name);
        FUNC5(!FUNC4(stored_name, full_name), "Got %s, expected %s\n",
                FUNC9(stored_name), FUNC9(full_name));
        FUNC0(stored_name);
    }

    /* Clear application name */
    hres = FUNC2(test_task, empty);
    FUNC5(hres == S_OK, "Failed setting name %s: %08x\n", FUNC9(empty), hres);
    hres = FUNC1(test_task, &stored_name);
    FUNC5(hres == S_OK, "GetApplicationName failed: %08x\n", hres);
    if (hres == S_OK)
    {
        FUNC5(!FUNC4(stored_name, empty),
                "Got %s, expected empty string\n", FUNC9(stored_name));
        FUNC0(stored_name);
    }

    FUNC3();
    return;
}