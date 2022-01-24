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
typedef  scalar_t__ pid_t ;
typedef  int /*<<< orphan*/  pdfapp_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 char* FUNC4 (char*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC6(pdfapp_t *app, char *buf)
{
	char *browser = FUNC4("BROWSER");
	pid_t pid;
	if (!browser)
	{
#ifdef __APPLE__
		browser = "open";
#else
		browser = "xdg-open";
#endif
	}
	/* Fork once to start a child process that we wait on. This
	 * child process forks again and immediately exits. The
	 * grandchild process continues in the background. The purpose
	 * of this strange two-step is to avoid zombie processes. See
	 * bug 695701 for an explanation. */
	pid = FUNC2();
	if (pid == 0)
	{
		if (FUNC2() == 0)
		{
			FUNC0(browser, browser, buf, (char*)0);
			FUNC3(stderr, "cannot exec '%s'\n", browser);
		}
		FUNC1(0);
	}
	FUNC5(pid, NULL, 0);
}