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

/* Variables and functions */
 int PATH_MAX ; 
 int /*<<< orphan*/  SW_SHOWNORMAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const*,char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  filename ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC10 (char const*,char*,int) ; 

__attribute__((used)) static void FUNC11(const char *uri)
{
	char buf[PATH_MAX];

	/* Relative file:// URI, make it absolute! */
	if (!FUNC10(uri, "file://", 7) && uri[7] != '/')
	{
		char buf_base[PATH_MAX];
		char buf_cwd[PATH_MAX];
		FUNC6(buf_base, filename, sizeof buf_base);
		FUNC8(buf_cwd, sizeof buf_cwd);
		FUNC7(buf, sizeof buf, "file://%s/%s/%s", buf_cwd, buf_base, uri+7);
		FUNC5(buf+7);
		uri = buf;
	}

#ifdef _WIN32
	ShellExecuteA(NULL, "open", uri, 0, 0, SW_SHOWNORMAL);
#else
	const char *browser = FUNC9("BROWSER");
	if (!browser)
	{
#ifdef __APPLE__
		browser = "open";
#else
		browser = "xdg-open";
#endif
	}
	if (FUNC3() == 0)
	{
		FUNC1(browser, browser, uri, (char*)0);
		FUNC4(stderr, "cannot exec '%s'\n", browser);
		FUNC2(0);
	}
#endif
}