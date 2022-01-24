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
struct dirent {char* d_name; } ;
typedef  scalar_t__ pid_t ;
typedef  size_t period_t ;
typedef  int /*<<< orphan*/  hook_path ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int MAX_HOOK_PATH ; 
 int /*<<< orphan*/  STDOUT_FILENO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ errno ; 
 int FUNC2 (char*,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/ * period_names ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,char*,char*) ; 

void
FUNC8(period_t prev_period, period_t period)
{
	char hooksdir_path[MAX_HOOK_PATH];
	DIR *hooks_dir = FUNC4(hooksdir_path);
	if (hooks_dir == NULL) return;

	struct dirent* ent;
	while ((ent = FUNC6(hooks_dir)) != NULL) {
		/* Skip hidden and special files (., ..) */
		if (ent->d_name[0] == '\0' || ent->d_name[0] == '.') continue;

		char *hook_name = ent->d_name;
		char hook_path[MAX_HOOK_PATH];
		FUNC7(hook_path, sizeof(hook_path), "%s/%s",
			 hooksdir_path, hook_name);

#ifndef _WIN32
		/* Fork and exec the hook. We close stdout
		   so the hook cannot interfere with the normal
		   output. */
		pid_t pid = FUNC3();
		if (pid == (pid_t)-1) {
			FUNC5("fork");
			continue;
		} else if (pid == 0) { /* Child */
			FUNC1(STDOUT_FILENO);

			int r = FUNC2(hook_path, hook_name,
				      "period-changed",
				      period_names[prev_period],
				      period_names[period], NULL);
			if (r < 0 && errno != EACCES) FUNC5("execl");

			/* Only reached on error */
			FUNC0(EXIT_FAILURE);
		}
#endif
	}
}