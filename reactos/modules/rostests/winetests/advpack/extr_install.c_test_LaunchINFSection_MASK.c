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
typedef  int HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  CURR_DIR ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,char*,int) ; 
 int FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 scalar_t__ winetest_interactive ; 

__attribute__((used)) static void FUNC8(void)
{
    HRESULT hr;
    char cmdline[MAX_PATH];
    static char file[] = "test.inf,DefaultInstall,4,0";
    static char file2[] = "test.inf,,1,0";

    /* The 'No UI' flag seems to have no effect whatsoever on Windows.
     * So only do this test in interactive mode.
     */
    if (winetest_interactive)
    {
        /* try an invalid cmdline */
        hr = FUNC7(NULL, NULL, NULL, 0);
        FUNC6(hr == 1, "Expected 1, got %d\n", hr);
    }

    FUNC0("one", NULL);
    FUNC3("one\\test.inf");

    /* try a full path to the INF */
    FUNC5(cmdline, CURR_DIR);
    FUNC4(cmdline, "\\");
    FUNC4(cmdline, "one\\test.inf,DefaultInstall,,4");
    hr = FUNC7(NULL, NULL, cmdline, 0);
    FUNC6(hr == 0, "Expected 0, got %d\n", hr);

    FUNC1("one\\test.inf");
    FUNC2("one");

    FUNC3("test.inf");

    /* try just the INF filename */
    hr = FUNC7(NULL, NULL, file, 0);
    FUNC6(hr == 0, "Expected 0, got %d\n", hr);

    hr = FUNC7(NULL, NULL, file2, 0);
    FUNC6(hr == 0, "Expected 0, got %d\n", hr);

    FUNC1("test.inf");
}