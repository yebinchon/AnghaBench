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
typedef  enum status_code { ____Placeholder_status_code } status_code ;
typedef  int /*<<< orphan*/  cwd ;

/* Variables and functions */
 int SUCCESS ; 
 scalar_t__ FUNC0 (char const*) ; 
 int FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*,char*,int) ; 

__attribute__((used)) static inline enum status_code
FUNC5(void)
{
	const char *prefix = FUNC3("GIT_PREFIX");
	char cwd[4096];

	if (!prefix || !*prefix)
		return SUCCESS;

	/*
	 * GIT_PREFIX is set when tig is invoked as a git alias.
	 * Tig expects to run from the subdirectory so clear the prefix
	 * and set GIT_WORK_TREE accordinglyt.
	 */
	if (!FUNC2(cwd, sizeof(cwd)))
		return FUNC1("Failed to read CWD");
	if (FUNC4("GIT_WORK_TREE", cwd, 1))
		return FUNC1("Failed to set GIT_WORK_TREE");
	if (FUNC0(prefix))
		return FUNC1("Failed to change directory to %s", prefix);
	if (FUNC4("GIT_PREFIX", "", 1))
		return FUNC1("Failed to clear GIT_PREFIX");

	return SUCCESS;
}