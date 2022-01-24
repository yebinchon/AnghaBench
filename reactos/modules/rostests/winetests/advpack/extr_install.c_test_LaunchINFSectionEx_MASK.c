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
typedef  scalar_t__ HRESULT ;

/* Variables and functions */
 char* CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ E_INVALIDARG ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC6(void)
{
    HRESULT hr;
    char cmdline[MAX_PATH];

    FUNC1("test.inf");

    /* try an invalid CAB filename with an absolute INF name */
    FUNC3(cmdline, CURR_DIR);
    FUNC2(cmdline, "\\");
    FUNC2(cmdline, "test.inf,DefaultInstall,c:imacab.cab,4");
    hr = FUNC5(NULL, NULL, cmdline, 0);
    FUNC4(hr == 0, "Expected 0, got %d\n", hr);

    /* try quoting the parameters */
    FUNC3(cmdline, "\"");
    FUNC2(cmdline, CURR_DIR);
    FUNC2(cmdline, "\\test.inf\",\"DefaultInstall\",\"c:,imacab.cab\",\"4\"");
    hr = FUNC5(NULL, NULL, cmdline, 0);
    FUNC4(hr == 0, "Expected 0, got %d\n", hr);

    /* The 'No UI' flag seems to have no effect whatsoever on Windows.
     * So only do this test in interactive mode.
     */
    if (winetest_interactive)
    {
        /* try an invalid CAB filename with a relative INF name */
        FUNC3(cmdline, "test.inf,DefaultInstall,c:imacab.cab,4");
        hr = FUNC5(NULL, NULL, cmdline, 0);
        FUNC4(hr == E_INVALIDARG, "Expected E_INVALIDARG, got %d\n", hr);
    }

    FUNC0("test.inf");
}