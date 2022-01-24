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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  SWAY_DEBUG ; 
 int /*<<< orphan*/  SWAY_ERROR ; 
 int S_IRUSR ; 
 int S_IWUSR ; 
 int S_IXUSR ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*,char*) ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static bool FUNC12(char *terminal, char *command) {
	char fname[] = "/tmp/swaynagXXXXXX";
	FILE *tmp= FUNC3(FUNC7(fname), "w");
	if (!tmp) {
		FUNC10(SWAY_ERROR, "Failed to create temp script");
		return false;
	}
	FUNC10(SWAY_DEBUG, "Created temp script: %s", fname);
	FUNC4(tmp, "#!/bin/sh\nrm %s\n%s", fname, command);
	FUNC2(tmp);
	FUNC0(fname, S_IRUSR | S_IWUSR | S_IXUSR);
	char *cmd = FUNC6(sizeof(char) * (FUNC9(terminal) + FUNC9(" -e ") + FUNC9(fname) + 1));
	FUNC8(cmd, "%s -e %s", terminal, fname);
	FUNC1("/bin/sh", "/bin/sh", "-c", cmd, NULL);
	FUNC11(SWAY_ERROR, "Failed to run command, execl() returned.");
	FUNC5(cmd);
	return false;
}